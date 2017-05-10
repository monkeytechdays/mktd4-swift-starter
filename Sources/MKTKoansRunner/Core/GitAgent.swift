struct Git {
    static let binary = "/usr/bin/git"

    static func currentBranch() -> ProcessValue? {
        return Runner.execute(binary, "symbolic-ref", "--short", "-q", "HEAD")
    }

    static func changeBranch(_ step:String) -> ProcessValue? {
        return Runner.execute(binary, "checkout", step)
    }
}
