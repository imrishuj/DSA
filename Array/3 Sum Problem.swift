// 3 Sum Problem

var array = [-1,0,1,2,-1,-4]
var target = 0

func threeSumBruteForce() {
    var threeSumItems = [[Int]]() 
    for i in 0..<array.count {
        for j in i+1..<array.count {
            for k in j+1..<array.count {
                if array[i] + array[j] + array[k] == target {
                    var threeSumItem = [array[i], array[j], array[k]]
                    threeSumItem.sort()
                    if !threeSumItems.contains(threeSumItem) {
                        threeSumItems.append(threeSumItem)
                    }
                }
            }
        }
    }
    print("Items whose sum is equal to target using brute force", threeSumItems)
}

threeSumBruteForce()

func threeSumBetterApproach() {
    var threeSumItems = [[Int]]() 
    for i in 0..<array.count {
        var tempArray = [Int]() 
        for j in i+1..<array.count {
            let third  = -(array[i] + array[j])
            if tempArray.contains(third) {
                var threeSumItem = [array[i], array[j], third]
                threeSumItem.sort()
                if !threeSumItems.contains(threeSumItem) {
                    threeSumItems.append(threeSumItem)
                }
            }
            tempArray.append(array[j])
        }
    }
    print("Items whose sum is equal to target using better approach", threeSumItems)
}

threeSumBetterApproach()

func threeSumOptimalApproach() {
    var threeSumItems = [[Int]]() 
    array.sort()
    for i in 0..<array.count {
        if (i != 0 && array[i] == array[i - 1]) { continue }
        var j = i+1, k = array.count-1
        while (j < k) {
            let sum = array[i] + array[j] + array[k]
            if sum > 0 {
                k = k - 1
            } else if sum < 0 {
                j = j + 1
            } else {
                threeSumItems.append([array[i], array[j], array[k]])
                j = j + 1
                k = k - 1
                while (j < k && array[j] == array[j - 1]) { j = j + 1 }
                while (j < k && array[k] == array[k + 1]) {  k = k - 1 }
            }
        }
    }
    print("Items whose sum is equal to target using optimal approach", threeSumItems)
}

threeSumOptimalApproach()