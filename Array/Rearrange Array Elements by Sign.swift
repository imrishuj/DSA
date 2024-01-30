// Rearrange Array Elements by Sign

var array = [3,1,-2,-5,2,-4]
var array2 = [1,2,-3,-1,-2,-3,4]

func rearrangeArrayElementsBySignWithAnEqualNumberOfPositiveNegativeElementUsingBruteForce() {
    var positiveElements = [Int](), negativeElements = [Int]()
    for item in array {
        if item < 0 {
            negativeElements.append(item)
        } else {
            positiveElements.append(item)
        }
    }
    for i in 0..<(array.count/2) {
         array[2*i] = positiveElements[i]
         array[2*i + 1] = negativeElements[i]
    }
    print("Array after rearrange the elements by sign with equal count of positive & negative elements using brute force approach is", array)
}

rearrangeArrayElementsBySignWithAnEqualNumberOfPositiveNegativeElementUsingBruteForce()

func rearrangeArrayElementsBySignWithAnEqualNumberOfPositiveNegativeElementUsingOptimalApproach() {
    var positiveIndex = 0, negativeIndex = 1
    var finalArray = Array(repeating: 0, count: array.count)
    for item in array {
        if item < 0 {
            finalArray[negativeIndex] = item
            negativeIndex += 2
        } else {
            finalArray[positiveIndex] = item
            positiveIndex += 2
        }
    }
    print("Array after rearrange the elements by sign with equal count of positive & negative elements using optimal approach is", finalArray)
}

rearrangeArrayElementsBySignWithAnEqualNumberOfPositiveNegativeElementUsingOptimalApproach()

func rearrangeArrayElementsBySignWithAnNonEqualNumberOfPositiveNegativeElementUsingOptimalApproach() {
    var positiveElements = [Int](), negativeElements = [Int]()
    for item in array2 {
        if item < 0 {
            negativeElements.append(item)
        } else {
            positiveElements.append(item)
        }
    }
    if positiveElements.count > negativeElements.count {
        for i in 0..<(negativeElements.count) {
            array2[2*i] = positiveElements[i]
            array2[2*i + 1] = negativeElements[i]
        }
        var startIndex = 2*negativeElements.count
        for i in negativeElements.count..<positiveElements.count {
            array2[startIndex] = positiveElements[i]
            startIndex += 1
        }
    } else {
        for i in 0..<(positiveElements.count) {
            array2[2*i] = positiveElements[i]
            array2[2*i + 1] = negativeElements[i]
         }
        var startIndex = 2*positiveElements.count
        for i in positiveElements.count..<negativeElements.count {
            array2[startIndex] = negativeElements[i]
            startIndex += 1
        }
    }
    print("Array after rearrange the elements by sign with non equal count of positive & negative elements using optimal approach is", array2)
}

rearrangeArrayElementsBySignWithAnNonEqualNumberOfPositiveNegativeElementUsingOptimalApproach()