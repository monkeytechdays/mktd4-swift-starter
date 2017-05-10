public struct Player : Hashable {
    public let id: Int
    public let name: String
    public let score:Int?

    public init(_ id:Int, _ name: String, _ score:Int?) {
        self.id = id
        self.name = name
        self.score = score
    }

    public var hashValue: Int {
        get {
            return 13 + self.id  + self.name.hashValue + (self.score ?? 0)
        }
    }
}

public func ==(lhs: Player, rhs: Player) -> Bool {
    return lhs.id == rhs.id &&
        lhs.name == rhs.name &&
        lhs.score == rhs.score
}
