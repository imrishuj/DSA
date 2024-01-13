/* Problem Statement: Given an integer array sorted in non-decreasing order, remove the duplicates in place such that each unique element appears only once. The relative order of the elements should be kept the same.*/

func removeDuplicateFromSortedBruteForce(_ arr: inout [Int]) -> ([Int], Int) {
    var tempArray = [Int]()
    for item in arr {
        if !tempArray.contains(item) {
            tempArray.append(item)
        }
    }
    for index in 0..<tempArray.count {
        arr[index] = tempArray[index]
    }
    return (arr, tempArray.count)
}

var array = [1,1,2,2,2,3,3]
print("Sorted array after remove duplicates using brute force is", removeDuplicateFromSortedBruteForce(&array))

func removeDuplicateFromSortedOptimalApproach(_ arr: inout [Int]) -> ([Int], Int) {
    var i = 0
    for secondIndex in 1..<arr.count-1 {
        if arr[i] != arr[secondIndex] {
            arr[i+1] = arr[secondIndex]
            i = i + 1
        }
    }
    return (arr, i+1)
}

array = [1,1,2,2,2,3,3]
print("Sorted array after remove duplicates using optimal approach is", removeDuplicateFromSortedOptimalApproach(&array))
