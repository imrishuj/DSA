// Find large element

func findLargerElementBruteForce(_ arr: inout [Int]) -> Int {
    arr.sort()
    return arr[arr.count - 1]
}

var array = [2, 6, 8, 1, 0, -1, 4]
print("Larger element using brute force from array \(array) is element \(findLargerElementBruteForce(&array))")


func findLargerElementOptimalApproach(_ arr: [Int]) -> Int {
    var max = arr[0]
    for item in arr {
        if item > max {
            max = item
        }
    }
    return max
}

array = [2, 6, 8, 1, 0, -1, 4]
print("Larger element using optimal approach from array \(array) is element \(findLargerElementOptimalApproach(array))")

