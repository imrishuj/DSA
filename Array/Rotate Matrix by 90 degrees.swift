// Set Matrix Zero

var matrix = [[1,1,1,1], [1,0,1,1], [1,1,0,1], [0,1,1,1]]
var row = matrix.count
var col = matrix[0].count

func setRowToZero(_ matrix: inout [[Int]], _ rowNumber: Int) {
    for j in 0..<row {
        if matrix[rowNumber][j] != 0 {
            matrix[rowNumber][j] = -1
        }
    }
}

func setColumnToZero(_ matrix: inout [[Int]], _ columnNumber: Int) {
     for i in 0..<col {
        if matrix[i][columnNumber] != 0 {
            matrix[i][columnNumber] = -1
        }
    }
}

func setMatrixZeroUsingBruteForce() {
    for i in 0..<row {
        for j in 0..<col {
            if matrix[i][j] == 0 {
                setRowToZero(&matrix, i)
                setColumnToZero(&matrix, j)
            }
        }
    }
    
    for i in 0..<row {
        for j in 0..<col {
            if matrix[i][j] == -1 {
                matrix[i][j] = 0
            }
        }
    }
    print("Matrix After Setting Zero Using Brute Force is", matrix)
}

setMatrixZeroUsingBruteForce()

matrix = [[1,1,1,1], [1,0,1,1], [1,1,0,1], [0,1,1,1]]

func setMatrixZeroUsingBetterApproach() {
    var rowArray = Array(repeating: false, count: row)
    var colArray = Array(repeating: false, count: col)
    
    for i in 0..<row {
        for j in 0..<col {
            if matrix[i][j] == 0 {
                rowArray[i] = true
                colArray[j] = true
            }
        }
    }
    
    for i in 0..<row {
        for j in 0..<col {
            if rowArray[i] || colArray[j] {
                matrix[i][j] = 0
            }
        }
    }
    print("Matrix After Setting Zero Using Better Approach is", matrix)
}

setMatrixZeroUsingBetterApproach()

matrix = [[1,1,1,1], [1,0,1,1], [1,1,0,1], [0,1,1,1]]

func setMatrixZeroUsingOptimalApproach() {
    var col0 = 1
    
    for i in 0..<row {
        for j in 0..<col {
            if matrix[i][j] == 0 {
                matrix[i][0] = 0
                j != 0 ?  (matrix[0][j] = 0) : (col0 = 0)
            }
        }
    }
    
    for i in 1..<row {
        for j in 1..<col {
            if matrix[i][j] != 0 {
                if matrix[0][j] == 0 || matrix[i][0] == 0 {
                    matrix[i][j] = 0
                }
            }
        }
    }
    
    if matrix[0][0] == 0 {
        for j in 0..<col {
            matrix[0][j] = 0
        }
    }
    
    if col0 == 0 {
        for i in 0..<row {
            matrix[i][0] = 0
        }
    }
    
    print("Matrix After Setting Zero Using Optimal Approach is", matrix)
}

setMatrixZeroUsingOptimalApproach()