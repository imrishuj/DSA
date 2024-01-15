// Linear Search

func linearSearch(_ arr: [Int], _ element: Int) {
    for i in 0..<arr.count {
        if arr[i] == element {
            print("Item found at index", i)
            return
        }
    }
}

var array = [1,2,3,4,5]
var num = 3

linearSearch(array, num)