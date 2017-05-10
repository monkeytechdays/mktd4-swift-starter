class Stage {
    static var steps = [(String,String)]()

    static func current() -> String? {
        return Git.currentBranch()?.data
    }

    static func next() -> String? {
        guard let current = Stage.current()
        else {
            return nil
        }

        if let index = steps.index(where: { $0.0 == current }), index + 1 < steps.count {
            Git.changeBranch(steps[index + 1].0)
            return current()
        }

        return nil
    }

    static func previous() -> String? {
        guard let current = Stage.current()
        else {
            return nil
        }

        if let index = steps.index(where: { $0.0 == current }), index > 0 {
            Git.changeBranch(steps[index - 1].0)
            return current()
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
