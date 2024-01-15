// Move all Zeros to the end of the array

func moveAllZerosToEndBruteForce(_ arr: inout [Int]) {
    var tempArray = [Int]()
    for item in arr {
        if item != 0 {
            tempArray.append(item)
        }
    }
    let nonZeroCount = arr.count - tempArray.count
    if nonZeroCount == 0 {
        print("Array has no element with 0 value", arr)
        return
    } else {
        for index in 0..<tempArray.count {
            arr[index] = tempArray[index]
        }
        for index in (arr.count-nonZeroCount)..<arr.count {
            arr[index] = 0
        }
        print("Array after move all zero to end using Brute Force is", arr)
    }
}

var array = [1 ,0 ,2 ,3 ,0 ,4 ,0 ,1]
moveAllZerosToEndBruteForce(&array)

func moveAllZerosToEndOptimalApproach(_ arr: inout [Int]) {
    if var j = arr.firstIndex(where: {$0 == 0}) {
        for index in j+1..<arr.count {
            if arr[index] != 0 {
                arr[j] = arr[index]
                arr[index] = 0
                j += 1
            }
        }
        print("Array after move all zero to end using Brute Force is", arr)
    } else {
        print("Array has no element with 0 value", arr)
        return
    }
}

array = [1 ,0 ,2 ,3 ,0 ,4 ,0 ,1]
moveAllZerosToEndOptimalApproach(&array)