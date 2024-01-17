// Intersection of two sorted array

var arr1 = [1,2,2,3,3,4,5,6] 
var arr2 = [2,3,3,5,6,6,7]

func intersectionUsingBruteForce() -> [Int] {
    var visitedArray = Array(repeating: 0, count: arr2.count)
    var tempArray = [Int]()
    for i in 0..<arr1.count {
        for j in 0..<arr2.count {
            if arr1[i] == arr2[j] && visitedArray[j] == 0 {
                tempArray.append(arr1[i])
                visitedArray[j] = 1
                break
            }
            if arr2[j] > arr1[i] {
                break
            }
        }
    }
    return tempArray
}

print("Array after intersection using brute force is", intersectionUsingBruteForce())

func intersectionUsingOptimalApproach() -> [Int] {
    var i = 0, j = 0
    var tempArray = [Int]()
    while (i < arr1.count && j < arr2.count) {
        if arr1[i] < arr2[j] {
            i += 1
        } else if arr1[i] > arr2[j] {
            j += 1
        } else {
            tempArray.append(arr1[i])
            i += 1
            j += 1
        }
    }
    return tempArray
}

print("Array after intersection using optimal approach is", intersectionUsingOptimalApproach())

