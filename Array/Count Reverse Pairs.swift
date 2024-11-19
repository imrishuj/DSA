/**

Count Reverse Pairs

Problem Statement: Given an array of numbers, you need to return the count of reverse pairs. Reverse Pairs are those pairs where i<j and arr[i]>2*arr[j].
*/

var array = [1,3,2,3,1]

func countReverseUsingBruteForce() {
    var count = 0
    for i in 0..<array.count {
        for j in i+1..<array.count {
            if array[i] > 2*array[j] {
                count += 1
            }
        }
    }
    print("Count reverse of given array using brute force is", count)
}

countReverseUsingBruteForce()

func merge(_ arr: inout [Int], _ left: Int, _ right: Int, _ mid: Int) -> Int {
    var temp = [Int]()
    var i = left
    var j = mid + 1
    var count = 0

    while (i <= mid && j <= right) {
        if arr[i] < arr[j] {
            temp.append(arr[i])
            i += 1
        } else {
            temp.append(arr[j])
            count += (mid - i + 1)
            j += 1
        }
    }
    
    if i > mid {
        while (j <= right) {
            temp.append(arr[j])
            j += 1
        }
    } else {
        while (i <= mid ) {
            temp.append(arr[i])
            i += 1
        }
    }
    for index in left...right {
        arr[index] = temp[index - left]
    }
    return count
}

func countPairs(_ arr: inout [Int], _ low: Int, _ mid: Int, _ high: Int) -> Int {
    var right = mid + 1
    var count = 0
    for i in low...mid {
        while (right <= high && arr[i] > 2 * arr[right]) { right += 1 }
        count += (right - (mid + 1))
    }
    return count
}


func mergeSort(_ arr: inout [Int], _ left: Int, _ right: Int) -> Int {
    var count = 0
    if (left < right) {
        let mid = (left+right)/2
        count += mergeSort(&arr, left, mid)
        count += mergeSort(&arr, mid+1, right)
        count += countPairs(&arr, left, mid, right)
        _ = merge(&arr, left, right, mid)
    }
    return count
}

func countInversionUsingOptimalApproach() {
    print("Count reverse of given array using optimal approach is", mergeSort(&array, 0, array.count-1))
}

countInversionUsingOptimalApproach()

