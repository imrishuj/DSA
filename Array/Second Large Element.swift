// Find Second Largest Element in an array

func findSecondLargestElementBruteForce(_ arr: inout [Int]) -> Int {
    arr.sort()
    return arr[arr.count - 2]
}

var array = [2, 6, 8, 1, 0, -1, 4]
print("Second largest element using brute force from array \(array) is element \(findSecondLargestElementBruteForce(&array))")

func findSecondLargestElementBetterApproach(_ arr: [Int]) -> Int {
    var max = arr[0]
    var second_max = Int()
    for item in arr {
        if item > max {
            max = item
        }
    }
    for item in arr {
        if item > second_max && item != max {
            second_max = item
        }
    }
    return second_max
}

array = [2, 6, 8, 1, 0, -1, 4]
print("Second largest element using better approach from array \(array) is element \(findSecondLargestElementBetterApproach(array))")

func findSecondLargestElementOptimalApproach(_ arr: [Int]) -> Int {
    var max = arr[0]
    var second_max = Int()
    for item in arr {
        if item > max {
            second_max = max
            max = item
        } else if item > second_max && item != max {
            second_max = item
        }
    }
    return second_max
}

array = [2, 6, 8, 1, 0, -1, 4]
print("Second largest element using optimal approach from array \(array) is element \(findSecondLargestElementOptimalApproach(array))")
