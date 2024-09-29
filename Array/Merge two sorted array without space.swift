/**

Merge two Sorted Arrays Without Extra Space


*/
var arr1 = [1, 4, 8, 10] 
var arr2 = [2, 3, 9]

func mergeSortedArrayWithoutSpace() {
    var i = arr1.count - 1
    var j = 0
    while(i >= 0 && j <= arr2.count-1) {
        if arr1[i] > arr2[j] {
            let temp1 = arr1[i]
            let temp2 = arr2[j]
            arr1[i] =  temp2
            arr2[j] = temp1
            i -= 1
            j += 1   
        } else {
            break
        }
    }
    arr1.sort()
    arr2.sort()
    print("Array after merge is", arr1+arr2)
}

mergeSortedArrayWithoutSpace()

arr1 = [1, 4, 8, 10] 
arr2 = [2, 3, 9]

func swapValue(a1: inout [Int], a2: inout [Int], _ i: Int, _ j: Int) {
    if a1[i] > a2[j] {
        let temp1 = a1[i]
        let temp2 = a2[j]
        a1[i] =  temp2
        a2[j] = temp1
    }
}

func mergeSortedArrayUsingGapMethod(arr1: inout [Int], arr2: inout [Int]) {
    var gap = (arr1.count + arr2.count + 1)/2
    while (gap > 0) {
        var i = 0
        var j = i + gap
        while (j < (arr1.count + arr2.count)) {
            if (i < arr1.count && j >= arr1.count) {
                swapValue(a1: &arr1, a2: &arr2, i, j-arr1.count)
            } else if (i >= arr1.count) {
                if arr2[i-arr1.count] > arr2[j-arr1.count] {
                let temp1 = arr2[i-arr1.count]
                let temp2 = arr2[j-arr1.count]
                arr2[i-arr1.count] =  temp2
                arr2[j-arr1.count] = temp1
                }
            } else {
               if arr1[i] > arr1[j] {
                let temp1 = arr1[i]
                let temp2 = arr1[j]
                arr1[i] =  temp2
                arr1[j] = temp1
            }
            }
            i += 1
            j += 1
        }
        if gap == 1 { break }
        gap = gap % 2 == 0 ? gap/2 : (gap+1)/2
    }
    print("Array after merge is", arr1+arr2)
}

mergeSortedArrayUsingGapMethod(arr1: &arr1, arr2: &arr2)

