// Find the Majority Element that occurs more than N/2 times

var array = [2,2,3,3,1,2,2]

func majorityElementMoreThanHalfUsingBruteForce() {
    for i in 0..<array.count {
        var count = 0
        for j in 0..<array.count {
            if array[i] == array[j] {
                count = count + 1
            }
        }
        if count > array.count / 2 {
            print("Element that occurs more than N/2 times using brute force is", array[i])
            break
        }
    }
}

majorityElementMoreThanHalfUsingBruteForce()

func majorityElementMoreThanHalfUsingBetterApproach() {
    var dict = [Int: Int]()
    for i in 0..<array.count {
        dict[array[i], default: 0] += 1
    }
    if let item = dict.first(where: { $0.value > array.count/2 }) {
         print("Element that occurs more than N/2 times using better approach is", item.key)
    }
}

majorityElementMoreThanHalfUsingBetterApproach()

func majorityElementMoreThanHalfUsingOptimalApproach() {
    var count = 0
    var element = Int()
    for item in array {
        if count == 0 {
            count = 1
            element = item
        } else if item == element {
            count = count + 1
        } else {
            count = count - 1
        }
    }
    print("Element that occurs more than N/2 times using optimal approach is", element)
}

majorityElementMoreThanHalfUsingOptimalApproach()
