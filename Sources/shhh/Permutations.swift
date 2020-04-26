//
//  LexicographicPermutations.swift
//  shhh
//
//  Created by Robert Bigelow on 4/18/20.
//

struct LexicographicPermutationGenerator: Sequence, IteratorProtocol {
    private var a: [Int]
    private var j: Int
    private let n: Int
    
    let count: Int
    
    init(_ unsorted: [Int]) {
        precondition(unsorted.count > 0)
        a = [Int.min]
        a.append(contentsOf: unsorted)
        a.sort()
        n = unsorted.count
        j = n
        count = (1...unsorted.count).reduce(1, *)
    }
    
    mutating func next() -> [Int]? {
        guard j > 0 else {
            return nil
        }
        
        let result = Array(a[1...])
        
        j = n - 1
        while a[j] >= a[j+1] && j > 0 {
            j -= 1
        }
        
        if j > 0 {
            var l = n
            while a[j] >= a[l] {
                l -= 1
            }
            a.swapAt(j, l)
            
            var k = j + 1
            l = n
            while k < l {
                a.swapAt(k, l)
                k += 1
                l -= 1
            }
        }
        
        return result
    }
}
