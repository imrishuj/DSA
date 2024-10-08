// Given an array that contains both negative and positive integers, find the maximum product subarray

var array = [-1,2,-3,0,-4,-5]

func maxProductSubArrayElementUsingBruteForce() {
    var max_product = array[0]
    for i in 0..<array.count {
        for j in i..<array.count {
            var product = 1
            for k in i...j {
                product = product * array[k]
            }
            max_product = max(product, max_product)
        }
    }
    print("Maximum Subarray product in an Array using brute force is \(max_product)")
}

maxProductSubArrayElementUsingBruteForce()

func maxProductSubArrayElementUsingBetterApproach() {
    var max_product = array[0]
    for i in 0..<array.count {
        var product = 1
        for j in i..<array.count {
            product = product * array[j]
        }
        max_product = max(product, max_product)
    }
    print("Maximum Subarray product in an Array using better approch is \(max_product)")
}

maxProductSubArrayElementUsingBetterApproach()

func maxProductSubArrayElementUsingOptimalApproach() {
    var max_product = array[0], prefix_product = 1, suffix_product = 1
    for i in 0..<array.count {
        if prefix_product == 0 { prefix_product = 1 }
        if suffix_product == 0 { suffix_product = 1 }
        prefix_product = prefix_product * array[i]
        suffix_product = suffix_product * array[array.count-i-1]
        max_product = max(max_product, max(prefix_product, suffix_product))
    }
    print("Maximum Subarray product in an Array using optimal approch is \(max_product)")
}

maxProductSubArrayElementUsingOptimalApproach()

func maxProductSubArrayElementUsingKadaneApproach() {
    var max_product = array[0], maxForIndex = array[0], minForIndex = array[0]
    for element in array {
        let tempMax = max(element, element*maxForIndex, element*minForIndex)
        minForIndex = min(element, element*maxForIndex, element*minForIndex)
        maxForIndex = tempMax
        max_product = max(max_product, maxForIndex)
    }
    print("Maximum Subarray product in an Array using kadane approch is \(max_product)")
}

maxProductSubArrayElementUsingKadaneApproach()
