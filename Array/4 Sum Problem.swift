// 4 Sum Problem

var array = [1,0,-1,0,-2,2]
var target = 0

func fourSumBruteForce() {
    var fourSumItems = [[Int]]() 
    for i in 0..<array.count {
        for j in i+1..<array.count {
            for k in j+1..<array.count {
                for l in k+1..<array.count {
                    if array[i] + array[j] + array[k] + array[l] == target {
                        var fourSumItem = [array[i], array[j], array[k], array[l]]
                        fourSumItem.sort()
                        if !fourSumItems.contains(fourSumItem) {
                            fourSumItems.append(fourSumItem)
                        }
                    }
                }
            }
        }
    }
    print("Items whose sum is equal to target using brute force", fourSumItems)
}

fourSumBruteForce()

func fourSumBetterApproach() {
    var fourSumItems = [[Int]]() 
    for i in 0..<array.count {
        for j in i+1..<array.count {
            var tempArray = [Int]() 
            for k in j+1..<array.count {
                let fourth  = -(array[i] + array[j] + array[k])
                if tempArray.contains(fourth) {
                    var fourSumItem = [array[i], array[j], array[k], fourth]
                    fourSumItem.sort()
                    if !fourSumItems.contains(fourSumItem) {
                        fourSumItems.append(fourSumItem)
                    }
                }
                tempArray.append(array[k])
            }
        }
    }
    print("Items whose sum is equal to target using better approach", fourSumItems)
}

fourSumBetterApproach()

func fourSumOptimalApproach() {
    var fourSumItems = [[Int]]() 
    array.sort()
    for i in 0..<array.count {
        if (i != 0 && array[i] == array[i - 1]) { continue }
        for j in i+1..<array.count {
            if (j != i+1 && array[j] == array[j - 1]) { continue }
            var k = j+1, l = array.count-1
            while (k < l) {
                let sum = array[i] + array[j] + array[k] + array[l]
                if sum > 0 {
                    l = l - 1
                } else if sum < 0 {
                    k = k + 1
                } else {
                    fourSumItems.append([array[i], array[j], array[k], array[l]])
                    k = k + 1
                    l = l - 1
                    while (k < l && array[k] == array[k - 1]) { k = k + 1 }
                    while (k < l && array[l] == array[l + 1]) { l = l - 1 }
                }
            }
        }
    }
    print("Items whose sum is equal to target using optimal approach", fourSumItems)
}

fourSumOptimalApproach()