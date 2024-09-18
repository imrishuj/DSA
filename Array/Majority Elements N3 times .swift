// Find the Majority Element that occurs more than N/3 times

var array = [2,2,3,3,1,3,1,1]

func majorityElementMoreThanHalfUsingBruteForce() {
    var majorityElement: [Int] = []
    for i in 0..<array.count {
        if majorityElement.isEmpty || majorityElement[0] != array[i] {
            var count = 0
            for j in 0..<array.count {
                if array[i] == array[j] {
                    count = count + 1
                }
            }
            if count > array.count / 3 {
                majorityElement.append(array[i])
            }
        }
        if majorityElement.count == 2 { break }
    }
    print("Element that occurs more than N/2 times using brute force is", majorityElement)
}

majorityElementMoreThanHalfUsingBruteForce()

func majorityElementMoreThanHalfUsingBetterApproach() {
    var dict = [Int: Int]()
    for i in 0..<array.count {
        dict[array[i], default: 0] += 1
    }
    print("Element that occurs more than N/3 times using better approach is", Array(dict.filter({ $0.value > array.count/3}).keys))
}

majorityElementMoreThanHalfUsingBetterApproach()

func majorityElementMoreThanHalfUsingOptimalApproach() {
    var ele1 = 0, ele2 = 0, count1 = 0, count2 = 0
        var majorityElement: [Int] = []
        for num in array {
            if count1 == 0 && num != ele2 {
                count1 = 1
                ele1 = num
            } else  if count2 == 0 && num != ele1 {
                count2 = 1
                ele2 = num
            } else if ele1 == num {
                count1 += 1
            } else if ele2 == num {
                count2 += 1
            } else {
                count1 -= 1
                count2 -= 1
            }
        }
        count1 = 0
        count2 = 0
        for num in array {
            if num == ele1 {
                count1+=1
            } else if num == ele2 {
                count2+=1
            }
        }
        if count1 >  array.count/3  {
            majorityElement.append(ele1)
        }
        if count2 >  array.count/3  {
            majorityElement.append(ele2)
        }
    print("Element that occurs more than N/3 times using optimal approach is", majorityElement)
}

majorityElementMoreThanHalfUsingOptimalApproach()
