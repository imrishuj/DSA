// Selection Sorting

var array = [9, 13, 20, 52, 24, 46]

func doSelectionSort() {
    for index in 0...(array.count - 2) {
        var min = index
        for secondIndex in index...(array.count - 1) {
            if array[secondIndex] < array[min] {
                min = secondIndex
            }
        }
       let temp = array[min]
       array[min] = array[index]
       array[index] = temp
    }
}

print("Array before sort", array)
doSelectionSort()
print("Array after sort", array)