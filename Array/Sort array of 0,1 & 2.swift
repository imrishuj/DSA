// Sort an array of 0s, 1s and 2s

var array = [0,1,2,0,1,2,1,2,0,0,0,1]

func sortArray012BruteForce() {
    array.sort()
    print("Array after sort using brute force", array)
    
}

sortArray012BruteForce()
array = [0,1,2,0,1,2,1,2,0,0,0,1]

func sortArray012BetterApproach() {
    var zerosCount = 0, onesCount = 0, twosCount = 0
    for item in array {
        switch item {
            case 0:  zerosCount += 1
            case 1:  onesCount += 1
            default: twosCount += 1
        }
    }
    
    for index in 0...zerosCount-1 {
        array[index] = 0
    } 
    for index in zerosCount...(zerosCount + onesCount - 1) {
        array[index] = 1
    } 
    for index in (zerosCount + onesCount)...(array.count - 1) {
        array[index] = 2
    }
    print("Array after sort using better approach", array)
}

sortArray012BetterApproach()
array = [0,1,2,0,1,2,1,2,0,0,0,1]

func sortArray012OptimalForce() {
    var left = 0, right = array.count - 1, mid = 0
    while (mid <= right) {
     if array[mid] == 0 {
        array.swapAt(left, mid)
         left += 1
         mid += 1
     } else if array[mid] == 1 {
         mid += 1
     } else {
        array.swapAt(mid, right)
         right -= 1
     }
    }
    print("Array after sort using optimal approach", array)
}

sortArray012OptimalForce()