/**

Given an integer numRows, return the first numRows of Pascal's triangle.

*/
func generate(_ numRows: Int) -> [[Int]] {
        var allRows = [[Int]]()
        for i in 0..<numRows {
           var j = 0
           var iRow = [Int]()
           while (j <= i) {
                let ncr = ncr(n: i, r: j)
                iRow.append(ncr)
                j += 1
           }
           allRows.append(iRow)
        }
        return allRows
}

func ncr(n: Int, r: Int) -> Int {
        var result = 1
        for i in 0..<r {
            result = result *  (n-i)
            result = result / (i+1)
        }
        return result
}

print(generate(5))