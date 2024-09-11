/**

Spiral Traversal of Matrix


155

2
Problem Statement: Given a Matrix, print the given matrix in spiral order.

Examples:

Example 1:
Input: Matrix[][] = { { 1, 2, 3, 4 },
		      { 5, 6, 7, 8 },
		      { 9, 10, 11, 12 },
	              { 13, 14, 15, 16 } }

Outhput: 1, 2, 3, 4, 8, 12, 16, 15, 14, 13, 9, 5, 6, 7, 11, 10.
Explanation: The output of matrix in spiral form.

Example 2:
Input: Matrix[][] = { { 1, 2, 3 },
	              { 4, 5, 6 },
		      { 7, 8, 9 } }
			    
Output: 1, 2, 3, 6, 9, 8, 7, 4, 5.
Explanation: The output of matrix in spiral form.


*/

var matrix = [[1,2,3,4], [5,6,7,8], [9,10,11,12], [13,14,15,16]]
var row = matrix.count
var col = matrix[0].count

func printSpiralMatrix() {
    
    var top = 0, rright = col - 1, bottom = row - 1, lleft = 0
    var spiralTraverse = [Int]()
    
    while (top <= bottom && lleft <= rright) {
    
        for i in lleft...rright {
            spiralTraverse.append(matrix[top][i])
        } 
        top = top + 1
        
        if top <= bottom {
            for i in top...bottom {
                spiralTraverse.append(matrix[i][rright])
            } 
            rright = rright - 1
            
            var i = rright
            while(i >= lleft) {
                spiralTraverse.append(matrix[bottom][i])
                i = i - 1
            }
            bottom = bottom - 1
        }
    
        if lleft <= rright {
            var i = bottom
            while(i >= top) {
                spiralTraverse.append(matrix[i][lleft])
                i = i - 1
            }
            lleft = lleft + 1
        }
    }
    print("Spiral Traversal of Matrix", spiralTraverse) 
}

printSpiralMatrix()