// Longest Consecutive Sequence in an Array

var array = [100,102,100,101,101,4,3,2,3,2,1,1,1,2]

func longestConsecutiveSequenceUsingBruteForce() {
    var longestSequenceCount = 1
    for item in array {
        var currentItem = item
        var count = 1
        while(array.contains(currentItem+1)) {
            currentItem += 1
            count += 1
        }
        longestSequenceCount = max(longestSequenceCount, count)
    }
    print("Longest Consecutive Sequence Count in an Array Using Brute Force Is", longestSequenceCount)
}

longestConsecutiveSequenceUsingBruteForce()

func longestConsecutiveSequenceUsingBetterApproach() {
    array.sort()
    var longestSequenceCount = 1, last_smaller = -1, count = 0
    for item in array {
        if last_smaller == item - 1 {
            last_smaller = item
            count += 1
        } else if last_smaller != item {
            last_smaller = item
            count = 1
        }
        longestSequenceCount = max(longestSequenceCount, count)
    }
    print("Longest Consecutive Sequence Count in an Array Using Better Approach Is", longestSequenceCount)
}

longestConsecutiveSequenceUsingBetterApproach()

array = [100,102,100,101,101,4,3,2,3,2,1,1,1,2]

func longestConsecutiveSequenceUsingOptimalApproach() {
    var setArray = [Int]()
    for item in array {
        if !setArray.contains(item) {
            setArray.append(item)
        }
    }
    var longestSequenceCount = 1
    for item in setArray {
        if setArray.contains(item-1) {
            var currentItem = item
            var count = 1
            while(setArray.contains(currentItem)) {
                currentItem += 1
                count += 1
            }
            longestSequenceCount = max(longestSequenceCount, count)
        }
    }
    print("Longest Consecutive Sequence Count in an Array Using Optimal Approach Is", longestSequenceCount)
}

longestConsecutiveSequenceUsingOptimalApproach()