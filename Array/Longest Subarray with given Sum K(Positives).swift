// Longest Subarray with given Sum K(Positives)

var array = [1,2,3,1,1,1,1,4,2,3]
var K = 4

func longestSubArrayUsingBruteForce() {
    var maxLength = 0
    for i in 0..<array.count {
        for j in i..<array.count {
            var sum = 0
            for k in i...j {
                sum = sum + array[k]
            }
            if sum == K {
                maxLength = max(maxLength, j-i+1)
            }
        }
    }
    print("Longest Subarray in array \(array) with given Sum \(K) using brute force approach is", maxLength)
}

longestSubArrayUsingBruteForce()

func longestSubArrayUsingAnotherBruteForce() {
    var maxLength = 0
    for i in 0..<array.count {
        var sum = 0
        for j in i..<array.count {
            sum = sum + array[j]
            if sum == K {
                maxLength = max(maxLength, j-i+1)
            }
        }
    }
    print("Longest Subarray in array \(array) with given Sum \(K) using another brute force approach is", maxLength)
}

longestSubArrayUsingAnotherBruteForce()

func longestSubArrayUsingBetterApproach() {
    var maxLength = 0
    var sum = 0
    var dict = [Int: Int]()
    for i in 0..<array.count {
        sum = sum + array[i]
        if sum == K {
            maxLength = max(maxLength, i)
        }
        let remainingSum = sum - K
        if let item = dict[remainingSum] {
            maxLength = max(maxLength, i-item)
        }
        if dict[sum] == nil {
            dict[sum] = i
        }
    }
    print("Longest Subarray in array \(array) with given Sum \(K) using better approach is", maxLength)
}

longestSubArrayUsingBetterApproach()

func longestSubArrayUsingOptimalApproach() {
    var maxLength = 0
    var sum = array[0]
    var i = 0, j = 0
    while(j < array.count) {
        while (i <= j && sum > K) {
            sum = sum - array[i]
            i = i + 1
        }
        if sum == K {
            maxLength = max(maxLength, j-i+1)
        }
        j = j + 1
        if (j < array.count) {
            sum = sum + array[j]
        }
    }
    print("Longest Subarray in array \(array) with given Sum \(K) using optimal approach is", maxLength)
}

longestSubArrayUsingOptimalApproach()
