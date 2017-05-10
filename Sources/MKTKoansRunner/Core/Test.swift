struct Test {
    static let binary = "/usr/bin/swift"

    static func list(_ test:String) -> ProcessValue? {
        return Runner.execute(binary, "test", "-l")
    }

    static func list(_ test:String, _ testList:ProcessValue?) -> [String] {
        return (testList?.data ?? "").lines
            .filter{ $0.contains(test) }
            .filter{ !$0.hasPrefix("warning:") }
    }

    static func run(_ test:String) -> ProcessValue? {
        return Runner.execute(binary, "test", "-s", "\(test)")
    }
}
