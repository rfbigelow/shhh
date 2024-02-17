//
//  Combinations.swift
//  shhh
//
//  Created by Robert Bigelow on 4/19/20.
//

struct LexicographicCombinationGenerator: Sequence, IteratorProtocol {
    private var c: [Int]
    private var j: Int
    private let n: Int
    private let t: Int
    
    let count: Int
    
    init(n: Int, t: Int) {
        self.n = n
        self.t = t
        c = [0]
        for i in 1...t {
            c.append(i - 1)
        }
        c.append(n)
        c.append(0)
        j = 1
        
        let s = n - t
        if s > t {
            count = ((s + 1)...n).reduce(1, *) / (1...(n - s)).reduce(1, *)
        }
        else {
            count = ((t + 1)...n).reduce(1, *) / (1...(n - t)).reduce(1, *)
        }
    }
    
    mutating func next() -> [Int]? {
        guard j <= t else {
            return nil
        }
        
        let result = Array(c[1...t])
        
        j = 1
        while c[j] + 1 == c[j + 1] {
            c[j] = j - 1
            j += 1
        }
        
        if j <= t {
            c[j] = c[j] + 1
        }
        
        return result
    }
}
