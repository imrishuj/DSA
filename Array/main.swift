// 2 Sum Problem

var array = [2,6,5,8,11]
var target = 14

func twoSumBruteForce() {
    for i in 0..<array.count {
        for j in i+1..<array.count {
            if array[i] + array[j] == target {
                print("Items whose sum is equal to target using brute force", array[i], array[j])
                break
            }
        }
    }
}

twoSumBruteForce()

func twoSumBetterApproach() {
    var dict = [Int: Int]() 
    for i in 0..<array.count {
        let remainigSum = target - array[i]
        if let index = dict[remainigSum] {
            print("Items whose sum is equal to target using better approach", array[index], array[i])
        }
        dict[array[i]] = i
    }
}

twoSumBetterApproach()

func twoSumOptimalApproach() {
    array.sort()
    var i = 0, j = array.count-1
    while (i < j) {
        let sum = array[i] + array[j]
        if sum > target {
            j = j - 1
        } else if sum < target {
            i = i + 1
        } else {
            print("Items whose sum is equal to target using optimal approach", array[i], array[j])
            break
        }
    }
}

twoSumOptimalApproach()