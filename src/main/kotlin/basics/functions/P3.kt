// Write a Kotlin function named `getFullName` that takes two String arguments,
// `firstName` and `lastName`, and returns a single String representing the full name
// (with a space in between).

fun getFullName(firstName: String, lastName: String): String {
  return "$firstName $lastName"
};

fun main() {
    println(getFullName("Sourabh", "Parmar"))
}