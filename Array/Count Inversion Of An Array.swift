/**

Problem Statement: Given an array of N integers, count the inversion of the array (using merge-sort).

What is an inversion of an array? Definition: for all i & j < size of array, if i < j then you have to find pair (A[i],A[j]) such that A[j] < A[i].

*/

var array = [5,4,3,2,1]

func countInversionUsingBruteForce() {
    var count = 0
    for i in 0..<array.count {
        for j in i+1..<array.count {
            if array[i] > array[j] {
                count += 1
            }
        }
    }
    print("Count inversion of given array using brute force is", count)
}

countInversionUsingBruteForce()

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

func mergeSort(_ arr: inout [Int], _ left: Int, _ right: Int) -> Int {
    var count = 0
    if (left < right) {
        let mid = (left+right)/2
        count += mergeSort(&arr, left, mid)
        print("left", count)
        count += mergeSort(&arr, mid+1, right)
        print("right", count)
        count += merge(&arr, left, right, mid)
        print("merge", count)
    }
    return count
}

func countInversionUsingOptimalApproach() {
    print("Count inversion of given array using optimal approach is", mergeSort(&array, 0, array.count-1))
}

countInversionUsingOptimalApproach()

