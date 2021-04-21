import XCTest
@testable import Factorization

class FactorizerTests: XCTestCase {

  var sut: Factorizer!

  override func setUp() {
    super.setUp()
    sut = .init()
  }

  override func tearDown() {
    sut = nil
    super.tearDown()
  }

  func testFactorsOfANegativeNumber() {
    XCTAssertNil(sut.factorize(-1503))
  }

  func testFactorsOf0() {
    XCTAssertNil(sut.factorize(0))
  }

  func testFactorsOf1() {
    XCTAssertNil(sut.factorize(1))
  }

  func testFactorsOf2() {
    XCTAssertEqual(sut.factorize(2), [2])
  }

  func testFactorsOf3() {
    XCTAssertEqual(sut.factorize(3), [3])
  }

  func testFactorsOf4() {
    XCTAssertEqual(sut.factorize(4), [2, 2])
  }

  func testFactorsOf6() {
    XCTAssertEqual(sut.factorize(6), [2, 3])
  }

  func testFactorsOf8() {
    XCTAssertEqual(sut.factorize(8), [2, 2, 2])
  }

  func testFactorsOfABiggerNumer() {
    XCTAssertEqual(sut.factorize(2 * 2 * 2 * 5 * 5 * 7 * 11 * 13 * 13), [2, 2, 2, 5, 5, 7, 11, 13, 13])
  }

}
