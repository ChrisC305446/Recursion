func getWords() -> [String] {
    var inputArray = [String]()
    var received : String?
    repeat{
        received = readLine()
        if received != nil{
            inputArray.append(received!)
        }
    }while received != nil
    return inputArray
}
var arr = getWords()
        
  //function must be type comparable in order to use < == and >.
func quicksort<Array: Comparable>(_ array: [Array]) -> [Array] {
    //guard stops overflow
    guard array.count > 1 else { return array }
//middle of array
    let pivot = array[array.count/2]
    //creates arrays based on if each number is greater than less than or equal to pivot 
    let less = array.filter { $0 < pivot }
    let equal = array.filter { $0 == pivot }
    let greater = array.filter { $0 > pivot }
//recursively moves numbers into arrays and adds them until each number is sorted
    return quicksort(less) + equal + quicksort(greater)
}

print(quicksort(arr))
