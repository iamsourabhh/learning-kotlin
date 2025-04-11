// Define a Kotlin function named `repeatString` that takes a String and an integer `n` as input
// and returns a new String that is the original string repeated `n` times.

fun repeatString(str: String, n: Int): String {
    return str.repeat(n);
}

fun main() {
    println(repeatString("Hello World", 6))
}