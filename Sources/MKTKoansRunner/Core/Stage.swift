class Stage {
    static var steps = [String:String]()

    static func current() -> String? {
        return Git.currentBranch()?.data
    }

    static func next() -> String? {
        guard let current = Stage.current()
        else {
            return nil
        }

        if let index = Array(steps.keys).index(where: { $0 == current }), index + 1 < steps.count {
            return Git.changeBranch(Array(steps.keys)[index + 1])?.data
        }

        return nil
    }

    static func previous() -> String? {
        guard let current = Stage.current()
        else {
            return nil
        }

        if let index = Array(steps.keys).index(where: { $0 == current }), index > 0 {
            return Git.changeBranch(Array(steps.keys)[index - 1])?.data
        }

        return nil
    }

    static func currentTest() -> String {
        if let current = Stage.current() {
            return steps[current] ?? ""
        }

        return ""
    }
}
