// Count Maximum Consecutive One’s in the array

func maxConsecutiveOne(_ arr: [Int]) -> Int {
    var count = 0, maxCount = 0
    for item in arr {
        if item == 1 {
            count += 1
        } else {
            count = 0
        }
        maxCount = max(count, maxCount)
    }
    return maxCount
}

var array = [1,1,0,0,1,1,1,0,0,1,1]
print("Maximum Consecutive One’s in the array \(array) is", maxConsecutiveOne(array))