public struct TodoError: Error {}

public func Todo<E>() throws -> E {
    throw TodoError()
}
