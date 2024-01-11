// Check if an Array is Sorted

func checkArrayIsSortedBruteForce(_ arr: [Int]) -> Bool {
    for i in 0..<arr.count-1 {
        for j in i+1..<arr.count {
            if arr[i] > arr[j] {
                return false
            }
        }
    }
    return true
}

var array1 = [1,2,3,4,5]
var array2 = [3, 4, 5, 6, 1]

print("Array using brute force \(array1) is sorted", checkArrayIsSortedBruteForce(array1))
print("Array using brute force \(array2) is sorted", checkArrayIsSortedBruteForce(array2))

func checkArrayIsSortedOptimalApproach(_ arr: [Int]) -> Bool {
    for i in 1..<arr.count {
        if arr[i-1] > arr[i] {
            return false
        }
    }
    return true
}

print("Array using optimal approach \(array1) is sorted", checkArrayIsSortedOptimalApproach(array1))
print("Array using optimal approach \(array2) is sorted", checkArrayIsSortedOptimalApproach(array2))
