// Create a Kotlin function called `isEven` that takes an integer
// as input and returns `true` if the number is even, and `false` otherwise.

fun isEven(num: Int): Boolean {
    return num % 2 == 0;
}

fun main() {
    println( isEven(5))
    println( isEven(10))
    println( isEven(2))
    println( isEven(6))
    println( isEven(7))

}