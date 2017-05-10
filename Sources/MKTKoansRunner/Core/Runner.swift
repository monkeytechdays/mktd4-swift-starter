import Foundation

typealias ProcessValue = (status:Int,data:String?,error:String?)

struct Runner {
    static func execute(_ command: String...) -> ProcessValue? {
        guard let executable = command.first
        else {
            return nil;
        } //base case, empty list.

        let arguments = Array(command.dropFirst())

        let task = Process()
        task.launchPath = executable
        task.arguments = arguments

        let stdout = Pipe()
        task.standardOutput = stdout

        let stderr = Pipe()
        task.standardError = stderr

        task.launch()

        let stdoutData = stdout.fileHandleForReading.readDataToEndOfFile()
        let output = String(data: stdoutData, encoding: String.Encoding.utf8)

        let stderrData = stderr.fileHandleForReading.readDataToEndOfFile()
        let error = String(data: stderrData, encoding: String.Encoding.utf8)

        task.waitUntilExit()

        return (Int(task.terminationStatus),
                output?.trimmingCharacters(in: .whitespacesAndNewlines),
                error?.trimmingCharacters(in: .whitespacesAndNewlines))
    }
}
