import XCTest
@testable import shhh

final class shhhTests: XCTestCase {
    func testWhenGeneratingNTuples() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        let combos = MixedRadixGenerator([2,4])
        XCTAssert(combos.count == 2 * 4, "Not all expected outcomes present.")
        for combo in combos {
            print(combo)
        }
        print("\(combos.count) elements.")
    }
    
    func testWhenGeneratingPermutations() {
        let generator = LexicographicPermutationGenerator([1, 2, 3, 4])
        XCTAssertEqual(24, generator.count)
        for p in generator {
            print(p)
        }
        print("\(generator.count) elements.")
    }
    
    func testWhenGeneratingCombinations_s_lessthanequalto_t() {
        let generator = LexicographicCombinationGenerator(n: 6, t: 3)
        XCTAssertEqual(20, generator.count)
        for c in generator {
            print(c)
        }
        print("\(generator.count) elements.")
    }
    
    func testWhenGeneratingCombinations_s_greaterthan_t() {
        let generator = LexicographicCombinationGenerator(n: 5, t: 2)
        XCTAssertEqual(10, generator.count)
        for c in generator {
            print(c)
        }
        print ("\(generator.count) elements.")
    }
}
