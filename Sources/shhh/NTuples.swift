
struct MixedRadixGenerator : Sequence, IteratorProtocol {
    
    private var a: [Int]
    private var m: [Int]
    private var j: Int
    
    let count: Int

    init(_ radixes: [Int]) {
        j = radixes.count
        a = Array(repeating: 0, count: radixes.count+1)
        m = [2]
        m.append(contentsOf: radixes)
        count = radixes.reduce(1, {$0 * $1})
    }
    
    mutating func next() -> [Int]? {
        guard j > 0 else {
            return nil
        }
        
        let result = Array(a[1...])

        j = m.count - 1
        while a[j] == m[j] - 1 {
            a[j] = 0
            j -= 1
        }
        
        if j != 0 {
            a[j] += 1
        }
        
        return result
    }
}
