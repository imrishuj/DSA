// Find the number that appears once, and the other numbers twice

var array = [1,1,2,3,3,4,4]

func numberAppearOnceBruteForce(_ arr: [Int] = array) {
    for item in arr {
        var count = 0
        for anotherItem in arr {
            if item == anotherItem {
                count += 1
            }
        }
        if count == 1 {
            print("Number that appears once in given array \(arr) using brute force is", item)
        }
    }
}

numberAppearOnceBruteForce()

func numberAppearOnceBetterApproach1(_ arr: [Int] = array) {
    guard let maxOfArray = arr.max() else { return }
    var tempArray = Array(repeating: 0, count: maxOfArray+1)
    for item in arr {
        tempArray[item] += 1
    }
    if let index = tempArray.firstIndex(where: {$0 == 1}) {
        print("Number that appears once in given array \(arr) using better approach-A is", arr[index])
    }
}

numberAppearOnceBetterApproach1()

func numberAppearOnceBetterApproach2(_ arr: [Int] = array) {
    var dict = [Int: Int]()
    for item in arr {
        dict[item, default: 0] += 1
    }
    if let item = dict.first(where: {$0.value == 1}) {
        print("Number that appears once in given array \(arr) using better approach-B is", item.key)
    }
}

numberAppearOnceBetterApproach2()

func numberAppearOnceOptimalSolution(_ arr: [Int] = array) {
    var xor = 0
    for item in arr {
        xor ^= item
    }
    print("Number that appears once in given array \(arr) using optimal solution is", xor)
}

numberAppearOnceOptimalSolution()