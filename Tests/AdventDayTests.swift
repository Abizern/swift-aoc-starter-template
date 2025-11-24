import Testing

@testable import AdventOfCode

@Suite("Package Tests")
struct AdventDayTests {
  @Test("Validate that data can be loaded")
  func initData() throws {
    let challenge = Day00()
    #expect(challenge.data.starts(with: "4514"))
  }
}
