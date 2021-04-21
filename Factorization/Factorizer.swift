import Foundation

class Factorizer {
  func factorize(_ number: Int) -> [Int]? {
    guard number >= 2 else { return nil }
    var results: [Int] = []
    var currentValue = number

    for divisor in 2...(number / 2 + 1) {
      while currentValue.isMultiple(of: divisor) {
        results.append(divisor)
        currentValue /= divisor
      }
    }
    if currentValue != 1 {
      results.append(currentValue)
    }
    return results
  }
}
