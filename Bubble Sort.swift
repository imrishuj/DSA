// Bubble Sorting

var array = [7, 2, 9, 5, 1]

func doBubbleSort() {
    for index in 0..<(array.count - 1) {
        var swapped = false;
        for secondIndex in 0..<(array.count - index - 1) {
            if array[secondIndex] > array[secondIndex + 1] {
                swapped = true
                let temp = array[secondIndex]
                array[secondIndex] = array[secondIndex + 1]
                array[secondIndex + 1] = temp
            }
        }
        if !swapped {
            break
        }
    }
}

print("Array before sort", array)
doBubbleSort()
print("Array after sort", array)

func doRecursiveBubbleSort(_ array: inout [Int], _ length: Int) {
    guard length > 1 else { return }
    var swapped = false
    for secondIndex in 0..<(length-1) {
        if array[secondIndex] > array[secondIndex + 1] {
            swapped = true
            let temp = array[secondIndex]
            array[secondIndex] = array[secondIndex + 1]
            array[secondIndex + 1] = temp
        }
    }
    if !swapped {
        return
    }
    doRecursiveBubbleSort(&array, (length-1))
}

array = [7, 2, 9, 5, 1]
print("Array before recursive sort", array)
doRecursiveBubbleSort(&array, array.count)
print("Array after recursive sort", array)
