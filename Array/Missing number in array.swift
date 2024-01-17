// Find the missing number in an array

var array = [1,2,4,5]
var count = 5

func missingNumberBruteForce() -> Int {
    for i in 1...count {
        var missingItem = 0
        for item in array {
            if i == item {
                missingItem = 1
                break
            }
        }
        if missingItem == 0 {
            return i
        }
    }
    return -1
}

print("Missing number in an array \(array) using brute force is", missingNumberBruteForce())

func missingNumberBetterApproach() -> Int {
    var tempArray = Array(repeating: 0, count: count)
    for item in array {
        tempArray[item-1] = 1
    }
    return (tempArray.firstIndex(where: {$0 == 0}) ?? -1) + 1
}

print("Missing number in an array \(array) using better approach is", missingNumberBetterApproach())

func missingNumberOptimalApproachUsingSum() -> Int {
    return (count * (count+1))/2 - array.reduce(0, +)
}

print("Missing number in an array \(array) using optimal approach 1 is", missingNumberOptimalApproachUsingSum())

func missingNumberOptimalApproachUsingXOR() -> Int {
    var xorOfCount = 0, xorOfArr = 0
    for i in 0..<array.count {
        xorOfArr = xorOfArr ^ array[i]
        xorOfCount = xorOfCount ^ (i+1)
    }
    xorOfCount = xorOfCount ^ (count)
    return xorOfCount ^ xorOfArr
}

print("Missing number in an array \(array) using optimal approach 1 is", missingNumberOptimalApproachUsingXOR())