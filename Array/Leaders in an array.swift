// Leaders in an Array

var array = [10, 22, 12, 3, 0, 6]

func leaderInArrayUsingBruteForce() {
    print("Leader elements are using brute force are", array[array.count-1], terminator: " ")
    for i in stride(from: array.count-2, through: 0, by: -1) {
        var leader = true 
        for j in i+1..<array.count {
            if array[i] < array[j] {
                leader = false
                break
            }
        }
        if leader {
            print(array[i], terminator: " ")
        }
    }
}

leaderInArrayUsingBruteForce()

func leaderInArrayUsingOptimalApproach() {
    var max = array[array.count-1]
    print("\nLeader elements are using optimal approach are", max, terminator: " ")
    for i in stride(from: array.count-2, through: 0, by: -1) { 
        if array[i] > max {
            print(array[i], terminator: " ")
            max = array[i]
        }
    }
}

leaderInArrayUsingOptimalApproach()