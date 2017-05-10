import XCTest
import MKTCore
import MKTUtils

class Ex08Tests: XCTestCase {

    let PLAYER_1 = Player(1, "Player 1", 10)
    let PLAYER_2 = Player(2, "Player 2", 20)
    let PLAYER_3 = Player(3, "Player 3", 0)
    let PLAYER_4 = Player(4, "Player 4", 5)
    let PLAYER_5 = Player(5, "Player 5", 20)

    var PLAYERS: [Player] {
        get {
            return [PLAYER_1, PLAYER_2, PLAYER_3, PLAYER_4, PLAYER_5]
        }
    }

    func test00EmptySet() throws {
        try XCTAssertTrue(getEmptySetOfPlayers().isEmpty)
    }

    func test01EmptyList() throws {
        try XCTAssertTrue(getEmptyListOfPlayers().isEmpty)
    }

    func test02FilterPlayersWithNot0Score() throws {
        try XCTAssertEqual(4, getPlayersWithScore0(PLAYERS).count)
        try XCTAssertFalse(getPlayersWithScore0(PLAYERS).contains(PLAYER_3))
    }

    func test03AllCustomersAreFromCity() throws {
        try XCTAssertTrue(checkAllPlayersHaveAScore(PLAYERS))
    }

    func test04AnyCustomerIsFromCity() throws {
        try XCTAssertTrue(checkContainsPlayerWithScore10(PLAYERS))
    }

    func test05CountCustomersFromCity() throws {
        try XCTAssertEqual(2, countPlayersWithScore20(PLAYERS))
    }

    func test06AnyCustomerFromCity() throws {
        try XCTAssertEqual(PLAYER_2, findAnyPlayerWithScore(PLAYERS, 20))
        try XCTAssertNil(findAnyPlayerWithScore(PLAYERS, 50))
    }

    func test07ShouldListPlayersNames() throws {
        let names = ["Player 1", "Player 2", "Player 3", "Player 4", "Player 5"]
        try XCTAssertEqual(names, getPlayersNames(PLAYERS))
    }

    func test08ShouldListPlayers() throws {
        try XCTAssertEqual(PLAYERS.count, getAllPlayers([Game(players:PLAYERS)]).count)
    }

    static var allTests : [(String, (Ex08Tests) -> () throws -> Void)] {
        return [
            ("test00EmptySet", test00EmptySet),
            ("test01EmptyList", test01EmptyList),
            ("test02FilterPlayersWithNot0Scoree", test02FilterPlayersWithNot0Score),
            ("test03AllCustomersAreFromCity", test03AllCustomersAreFromCity),
            ("test04AnyCustomerIsFromCity", test04AnyCustomerIsFromCity),
            ("test05CountCustomersFromCity", test05CountCustomersFromCity),
            ("test06AnyCustomerFromCity", test06AnyCustomerFromCity),
            ("test07ShouldListPlayersNames", test07ShouldListPlayersNames),
            ("test08ShouldListPlayers", test08ShouldListPlayers)
        ]
    }

}
