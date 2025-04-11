// Write a Kotlin function that takes a list of integers as input
// and returns the sum of all the integers in the list.

fun sum(nums: Array<Int>): Int {
    var sum = 0
    nums.forEach { num ->
        sum += num
    }
    return sum;
}

fun main() {
    println(sum(arrayOf(1,2,3,4,5,6,7,8,9)))
}