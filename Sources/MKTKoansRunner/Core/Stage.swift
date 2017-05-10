class Stage {
    static var steps = [(String,String)]()

    static func current() -> String? {
        return Git.currentBranch()?.data
    }

    static func next() -> ProcessValue? {
        guard let current = Stage.current()
        else {
            return nil
        }

        if let index = steps.index(where: { $0.0 == current }), index + 1 < steps.count {
            return Git.changeBranch(steps[index + 1].0)
        }

        return nil
    }

    static func previous() -> ProcessValue? {
        guard let current = Stage.current()
        else {
            return nil
        }

        if let index = steps.index(where: { $0.0 == current }), index > 0 {
            return Git.changeBranch(steps[index - 1].0)
        }

        return nil
    }

    static func currentTest() -> String {
        if let current = Stage.current(),
            let entry = steps.first(where: { $0.0 == current }) {
            return entry.1
        }

        return ""
    }
}
