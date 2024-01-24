// Kadane's Algorithm, Maximum Subarray Sum in an Array & Also Print the element

var array = [-2,1,-3,4,-1,2,1,-5,4]

func maxSubArrayElementUsingBruteForce() {
    var max_sum = array[0], start_index = -1, end_index = -1
    for i in 0..<array.count {
        for j in i..<array.count {
            var sum = 0
            for k in i...j {
                sum = sum + array[k]
            }
            if sum > max_sum {
                max_sum = sum
                start_index = i
                end_index = j
            }
        }
    }
    if max_sum > 0 {
        print("Maximum Subarray Sum in an Array using brute force is \(max_sum) & elements are", terminator: " ")
        for index in start_index...end_index {
         print(array[index], terminator: " ")
        }
    } else {
        print("Maximum Subarray Sum in an Array using brute force is 0")
    }
}

maxSubArrayElementUsingBruteForce()

func maxSubArrayElementUsingBetterApproach() {
    var max_sum = array[0], start_index = -1, end_index = -1
    for i in 0..<array.count {
        var sum = 0
        for j in i..<array.count {
            sum = sum + array[j]
            if sum > max_sum {
                max_sum = sum
                start_index = i
                end_index = j
            }
        }
    }
    if max_sum > 0 {
        print()
        print("Maximum Subarray Sum in an Array using better approch is \(max_sum) & elements are", terminator: " ")
        for index in start_index...end_index {
         print(array[index], terminator: " ")
        }
    }  else {
        print("Maximum Subarray Sum in an Array using  better approch is 0")
    }
}

maxSubArrayElementUsingBetterApproach()

func maxSubArrayElementUsingOptimalApproach() {
    var max_sum = array[0], sum = 0, start_index = -1, end_index = -1
    for i in 0..<array.count {
        if sum == 0 {
            start_index = i
        }
        sum = sum + array[i]
        if sum < 0 {
            sum = 0
        }
        if sum > max_sum {
            max_sum = sum
            end_index = i
        }
    }
    if max_sum < 0 {
        max_sum = 0
    }
    if max_sum > 0 {
        print()
        print("Maximum Subarray Sum in an Array using optimal approch is \(max_sum) & elements are", terminator: " ")
        for index in start_index...end_index {
         print(array[index], terminator: " ")
        }
    }
}

maxSubArrayElementUsingOptimalApproach()
