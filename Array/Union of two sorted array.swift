// Union of two sorted array

var arr1 = [1,1,2,3,4,5] 
var arr2 = [2,3,4,4,5,6]

func unionUsingBruteForce() -> [Int] {
    var dict = [Int: Int]()
    for item in arr1 {
        dict[item, default: 0] += 1
    }
    for item in arr2 {
        dict[item, default: 0] += 1
    }
    return Array(dict.keys).sorted()
}

print("Array after union using brute force is", unionUsingBruteForce())

func unionUsingBetterApproach() -> [Int] {
    return Set(arr1 + arr2).sorted()
}

print("Array after union using better approach is", unionUsingBruteForce())

func unionUsingOptimalApproach() -> [Int] {
    var i = 0, j = 0
    var finalArray = [Int]()
    while (i < arr1.count && j < arr2.count) {
        if arr1[i] <= arr2[j] {
            if finalArray.isEmpty || finalArray[finalArray.count - 1] != arr1[i] {
                finalArray.append(arr1[i])
            }
            i += 1
        } else {
            if finalArray.isEmpty || finalArray[finalArray.count - 1] != arr2[j] {
                finalArray.append(arr2[j])
            }
            j += 1
        }
    }
    
    while (i < arr1.count) {
        if finalArray[finalArray.count - 1] != arr1[i] {
            finalArray.append(arr1[i])
        }
        i += 1
    }
    
    while (j < arr2.count) {
        if finalArray[finalArray.count - 1] != arr2[j] {
            finalArray.append(arr2[j])
        }
        j += 1
    }
    return finalArray
}

print("Array after union using optimal approach is", unionUsingBruteForce())
