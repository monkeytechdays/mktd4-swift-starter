import Foundation
import Rainbow

Stage.steps = [
    "master": ".",
    "ex00": "Ex00Tests",
    "ex01": "Ex01Tests",
    "ex02": "Ex02Tests",
    "ex03": "Ex03Tests",
    "ex04": "Ex04Tests",
    "ex05": "Ex05Tests",
    "ex06": "Ex06Tests",
    "ex07": "Ex07Tests",
    "ex08": "Ex08Tests",
    "ex09": "Ex09Tests",
    "ex10": "Ex10Tests",
    "ex11": "Ex11Tests",
    "ex12": "Ex12Tests",
    "ex13": "Ex13Tests",
    "ex14": "Ex14Tests",
    "ex15": "Ex15Tests",
    "completed": "."
 ]

func command() -> String? {
    if CommandLine.arguments.count < 3 {
        return nil
    }

    return CommandLine.arguments[2]
}

switch command() {
case "start"? :
    if let current = Git.changeBranch("master") {
        print(" \u{2728} " + " Starting koans")
    }
case "previous"? :
    if let branch = Stage.previous() {
        print(" \u{2728} " + " previous step is \(branch)")
    }
case "current"? :
    if let current = Stage.current() {
        print(" \u{2728} " + " Current step is \(current)")
    }
case "run"?:
    let stage = Stage.currentTest()
    let build = Test.list(stage)

    if build?.status != 0 {
        print(build?.data ?? "")
        print(build?.error ?? "")
        print(" \u{1F633}  build is broken".red)
        exit(1);
    }

    let tests = Test.list(stage, build)
    for (index,test) in tests.enumerated() {
        let result = Test.run(test)

        if result?.status != 0 {
            print(result?.data ?? "")
            print(result?.error ?? "")
            print(" \u{1F47B}  Test \(test) is broken - Try not. Do, or do not. There is no try!".red)
            exit(1);
        } else {
            print(" \u{2705}" + "  [\(index+1)/\(tests.count)]".blue.bold + " \(test) ")
        }
    }
    print(" \u{1F496}  Congratulations all tests passed - ready for the next step?".yellow.bold)
case "next"? :
    if let branch = Stage.next() {
        print(" \u{2728} " + " Next step is \(branch)")
    }
case "end"? :
    if let current = Git.changeBranch("completed") {
        print(" \u{2728} " + " Ending koans")
    }
default:
    print(" \u{1F37A}  usage: \(CommandLine.arguments[1]) start|previous|current|run|next|end")
}
