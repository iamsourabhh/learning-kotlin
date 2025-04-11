// Write a Kotlin function named `calculateArea` that takes the length and width
// of a rectangle (both as integers) as input and returns the area (also an integer).

fun calculateArea(length: Int, width: Int): Int {
    return length * width;
}

fun main() {
    println( calculateArea(10, 5))
}