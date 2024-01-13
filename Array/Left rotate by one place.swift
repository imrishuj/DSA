/* Problem Statement: Given an array of N integers, left rotate the array by one place.*/

func leftRotateByOnePlaceBruteForce(_ arr: inout [Int]) -> ([Int]) {
    var tempArray = Array(repeating: 0, count: arr.count)
    for index in 0..<arr.count-1 {
        tempArray[index] = arr[index+1]
    }
    tempArray[arr.count-1] = arr[0]
    return (tempArray)
}

var array = [1,1,2,2,2,3,3]
print("Array after left rotate by one place using brute force is", leftRotateByOnePlaceBruteForce(&array))

func leftRotateByOnePlaceOptimalApproach(_ arr: inout [Int]) -> ([Int]) {
    let temp = arr[0]
    for index in 0..<arr.count-1 {
        arr[index] = arr[index+1]
    }
    arr[arr.count-1] = temp
    return (arr)
}

array = [1,1,2,2,2,3,3]
print("Array after left rotate by one place using optimal approach is", leftRotateByOnePlaceOptimalApproach(&array))
