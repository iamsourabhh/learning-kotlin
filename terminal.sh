#!/bin/bash

# Navigate to the Kotlin source directory
cd src/main/kotlin

# --- Create Directories (if they don't exist) ---
mkdir -p basics/syntax_variables
mkdir -p basics/functions
mkdir -p basics/control_flow
mkdir -p basics/data_classes
mkdir -p basics/null_safety
mkdir -p basics/collections
mkdir -p basics/higher_order_functions
mkdir -p advanced/sealed_classes_interfaces
mkdir -p advanced/extension_functions_properties
mkdir -p advanced/generics
mkdir -p advanced/scope_functions
mkdir -p advanced/coroutines
mkdir -p advanced/creating_classes
mkdir -p advanced/properties
mkdir -p advanced/constructors
mkdir -p advanced/constraining_visibility
mkdir -p advanced/variable_argument_lists
mkdir -p advanced/property_accessors
mkdir -p advanced/named_default_arguments
mkdir -p advanced/overloading
mkdir -p advanced/enumerations
mkdir -p advanced/destructuring_declarations
mkdir -p advanced/sequences
mkdir -p advanced/local_functions
mkdir -p advanced/recursion
mkdir -p advanced/inheritance
mkdir -p advanced/abstract_classes
mkdir -p advanced/polymorphism
mkdir -p advanced/composition
mkdir -p advanced/delegation
mkdir -p advanced/type_checking
mkdir -p advanced/nested_classes
mkdir -p advanced/objects
mkdir -p advanced/inner_classes
mkdir -p advanced/companion_objects
mkdir -p advanced/exception_handling
mkdir -p advanced/check_instructions
mkdir -p advanced/nothing_type
mkdir -p advanced/resource_cleanup
mkdir -p advanced/logging
mkdir -p advanced/extension_lambdas
mkdir -p advanced/operator_overloading
mkdir -p advanced/property_delegation
mkdir -p advanced/late_initialization

# --- Problem Statements and File Generation ---

problem_counter=1

process_problems() {
    local concept_name="$1"
    local directory="$2"
    local problems=("$@:3")

    local counter=1
    for problem in "${problems[@]}"; do
        filename="src/main/kotlin/${directory}/Problem${counter}.kt"
        package_path=$(echo "$directory" | sed 's/\//./g')

        echo "// package $package_path" > "$filename"
        echo "" >> "$filename"
        echo "// Problem ${concept_name} - ${counter}: ${problem//[$'\r\n']}" >> "$filename"
        echo "" >> "$filename"
        echo "fun solveProblem() {" >> "$filename"
        echo "    // Your solution goes here" >> "$filename"
        echo "}" >> "$filename"
        echo "" >> "$filename"
        echo "fun main() {" >> "$filename"
        echo "    println(\"Running Problem ${counter} for ${concept_name}\")" >> "$filename"
        echo "    solveProblem()" >> "$filename"
        echo "}" >> "$filename"
        echo "Created: $filename"
        ((counter++))
    done
}

# Section I: Programming Basics
process_problems "VarVal" "basics/syntax_variables" \
    "Write a Kotlin program that declares an immutable variable to store the name of a city and a mutable variable to store its population. Initialize them with appropriate values." \
    "Declare two integer variables, \`num1\` and \`num2\`, and assign them the values 10 and 5 respectively. Then, declare a third variable, \`sum\`, and assign it the result of adding \`num1\` and \`num2\`." \
    "Write a Kotlin program that declares a variable of type \`Double\` to store the price of an item. Initialize it with a value. Then, declare another variable of type \`Int\` to store the quantity. Calculate the total cost and store it in a \`Double\` variable." \
    "Declare a variable to store a boolean value indicating whether it is raining. Initialize it to \`true\`. Then, based on this boolean value, print either \"Bring an umbrella!\" or \"Enjoy the sunshine!\"." \
    "Declare a variable to store a character representing a grade (e.g., 'A', 'B', 'C'). Then, print a message like \"Your grade is [grade].\""

process_problems "Functions" "basics/functions" \
    "Write a Kotlin function named \`calculateArea\` that takes the length and width of a rectangle (both as integers) as input and returns the area (also an integer)." \
    "Create a Kotlin function called \`isEven\` that takes an integer as input and returns \`true\` if the number is even, and \`false\` otherwise." \
    "Write a Kotlin function named \`getFullName\` that takes two String arguments, \`firstName\` and \`lastName\`, and returns a single String representing the full name (with a space in between)." \
    "Define a Kotlin function named \`repeatString\` that takes a String and an integer \`n\` as input and returns a new String that is the original string repeated \`n\` times." \
    "Write a Kotlin function that takes a list of integers as input and returns the sum of all the integers in the list."

process_problems "IfExpressions" "basics/control_flow" \
    "Write a Kotlin program that takes an integer as input and prints \"Positive\" if the number is greater than 0, \"Negative\" if it's less than 0, and \"Zero\" if it's equal to 0. Use \`if-else if-else\` statements." \
    "Write a Kotlin program that takes a day of the week (as a String, e.g., \"Monday\") as input and prints a corresponding message (e.g., \"Start of the week\"). Use a \`when\` expression." \
    "Write a Kotlin program that prints all the numbers from 1 to 10 (inclusive) using a \`for\` loop." \
    "Write a Kotlin program that asks the user for input until they enter the word \"quit\". Use a \`while\` loop." \
    "Write a Kotlin program that iterates through a list of numbers. If the number is even, print it. If the number is greater than 10, stop the loop using \`break\`."

process_problems "StringTemplates" "basics/syntax_variables" \
    "Write a Kotlin program that declares a \`String\` variable for a product name and a \`Double\` variable for its price. Use string templates to print a message like \"The price of [product name] is $[price].\"" \
    "Create a function that takes a person's name and age as input and returns a greeting message using string templates in the format \"Hello, [name]! You are [age] years old.\"" \
    "Declare two integer variables, \`a\` and \`b\`. Use a string template to print the result of their addition in the format \"[a] + [b] = [a + b]\"." \
    "Create a \`data class\` \`Book\` with \`title\` and \`author\` properties. Create an instance and use a string template to print \"Title: [title], Author: [author]\"." \
    "Write a program that declares a nullable String. Use a string template with the Elvis operator to print the string if it's not null, or a default message if it is null."

process_problems "Booleans" "basics/syntax_variables" \
    "Declare two integer variables and a boolean variable that stores the result of checking if the first number is greater than the second. Print the boolean value." \
    "Write a function that takes an integer as input and returns \`true\` if it's divisible by both 2 and 3, and \`false\` otherwise." \
    "Declare a boolean variable indicating whether a user is logged in. Based on this value, print either \"User is logged in\" or \"User is logged out\"." \
    "Write a program that takes two boolean inputs and prints \`true\` if at least one of them is \`true\`, and \`false\` otherwise." \
    "Declare two integer variables. Use boolean expressions within an \`if\` statement to check if the first number is positive AND the second number is even. Print a message if both conditions are true."

process_problems "RepetitionWithWhile" "basics/control_flow" \
    "Write a Kotlin program that prints the numbers from 1 to 5 using a \`while\` loop." \
    "Write a Kotlin program that asks the user to enter a positive number. If the number is not positive, it keeps asking until a positive number is entered." \
    "Write a \`while\` loop that iterates through a list of strings and prints each string until it encounters a string with the value \"stop\"." \
    "Write a program that calculates the sum of numbers from 1 to 10 using a \`while\` loop." \
    "Write a \`while\` loop that simulates rolling a six-sided die until a 6 is rolled. Print each roll."

process_problems "LoopingAndRanges" "basics/control_flow" \
    "Write a Kotlin program that prints the numbers from 1 to 10 (inclusive) using a \`for\` loop with a range." \
    "Write a Kotlin program that prints the even numbers from 2 to 20 (inclusive) using a \`for\` loop with a range and a step." \
    "Iterate through the characters of a string using a \`for\` loop and print each character." \
    "Iterate through a list of names using a \`for\` loop and print each name along with its index." \
    "Write a Kotlin program that prints the numbers from 10 down to 1 using a \`for\` loop with a \`downTo\` range."

process_problems "TheInKeyword" "basics/control_flow" \
    "Check if a given number is within the range of 1 to 10 using the \`in\` keyword." \
    "Check if a given character is a vowel ('a', 'e', 'i', 'o', 'u') using the \`in\` keyword with a collection." \
    "Iterate through a list of strings and print only those strings whose length is within the range of 3 to 5 (inclusive) using the \`in\` keyword within an \`if\` condition." \
    "Check if a specific substring exists within a larger string using the \`in\` keyword." \
    "Use the \`!in\` keyword to check if a number is NOT within a specific range."

process_problems "Functions" "basics/functions" \
    "Write a Kotlin function named \`calculateArea\` that takes the length and width of a rectangle (both as integers) as input and returns the area (also an integer)." \
    "Create a Kotlin function called \`isEven\` that takes an integer as input and returns \`true\` if the number is even, and \`false\` otherwise." \
    "Write a Kotlin function named \`getFullName\` that takes two String arguments, \`firstName\` and \`lastName\`, and returns a single String representing the full name (with a space in between)." \
    "Define a Kotlin function named \`repeatString\` that takes a String and an integer \`n\` as input and returns a new String that is the original string repeated \`n\` times." \
    "Write a Kotlin function that takes a list of integers as input and returns the sum of all the integers in the list."

process_problems "DataClasses" "basics/data_classes" \
    "Define a Kotlin \`data class\` named \`Person\` with properties \`name\` (String) and \`age\` (Int). Create an instance and print its \`toString()\` representation." \
    "Create a \`data class\` \`Point\` with \`x\` and \`y\` coordinates. Create two instances with the same values and check if they are equal using \`==\`." \
    "Define a \`data class\` \`Book\` with \`title\`, \`author\`, and \`year\`. Create an instance and use destructuring to get the title and author into separate variables." \
    "Create a \`data class\` \`Car\` with \`make\`, \`model\`, and \`year\`. Write a function that takes a \`Car\` object and returns a copy of it with the year incremented." \
    "Define a \`data class\` \`Address\` with \`street\`, \`city\`, and \`zipCode\`. Create an instance and print its \`hashCode()\` and \`equals()\` results when compared to another instance with the same values."

process_problems "NullableTypes" "basics/null_safety" \
    "Declare a nullable String variable and assign it the value \`null\`." \
    "Declare a nullable integer variable and assign it the value 10." \
    "Write a function that takes a nullable boolean as input and prints \"True\" if it's true, \"False\" if it's false, and \"Unknown\" if it's null." \
    "Create a nullable list of strings." \
    "Declare a nullable variable of a custom class type."

process_problems "SafeCallsAndElvisOperator" "basics/null_safety" \
    "Declare a nullable String variable. Use the safe call operator (\`?.\`) to access its length and print the result (which might be null)." \
    "Declare a nullable String variable. Use the safe call operator (\`?.\`) along with the Elvis operator (\`?:\`) to get the length of the string if it's not null, or -1 if it is null." \
    "Create a function that takes a nullable \`Person\` object (with a \`name\` property). Use the safe call operator to access and print the person's name only if the \`Person\` object is not null." \
    "Declare a nullable list of integers. Use the safe call operator to get its size if it's not null, or 0 if it is null." \
    "Combine safe calls and the Elvis operator to access a nested nullable property (e.g., \`person?.address?.city\`) and provide a default value if any part of the chain is null."

process_problems "Non-NullAssertions" "basics/null_safety" \
    "Declare a nullable String variable. Assign it a non-null value. Then, access its length using the non-null assertion operator (\`!!\`). Be prepared for a \`NullPointerException\` if the value were null." \
    "Write a function that takes a nullable String as input. Inside the function, if you are certain the string is not null at a particular point, use the non-null assertion operator to access its properties." \
    "Explain a scenario where you might temporarily use the non-null assertion operator, but also why it's generally recommended to avoid it in favor of safer null handling mechanisms. (No code required, just an explanation)." \
    "Consider a situation where you are interacting with Java code that doesn't have Kotlin's null safety. You receive a String from a Java method that you expect to be non-null. How might you use the non-null assertion operator in this context, and what are the risks?" \
    "Write a program that declares a nullable list. If you are sure the list is initialized later, access its size using the non-null assertion operator after (hypothetically) initializing it."

process_problems "ExtensionsForNullableTypes" "basics/null_safety" \
    "Write an extension function for the nullable \`String?\` type that returns \`true\` if the string is not null and not empty, and \`false\` otherwise." \
    "Create an extension function for a nullable \`List<T>?\` that returns an empty list if the list is null, otherwise returns the original list." \
    "Write an extension function for a nullable \`Int?\` that returns 0 if the integer is null, otherwise returns the integer itself." \
    "Define an extension function for a nullable \`Person?\` class (assuming you have a \`Person\` class with a \`name\` property) that returns \"Unknown\" if the person is null, otherwise returns the person's name." \
    "Create an extension function for a nullable \`String?\` that returns the string in uppercase if it's not null, and \`null\` otherwise."

process_problems "Collections" "basics/collections" \
    "Create an immutable list of integers containing the numbers 5, 10, 15, 20. Print the first and last elements of the list." \
    "Create a mutable list of strings. Add three names to it. Then, remove the second name from the list." \
    "Create an immutable set of characters containing 'a', 'b', 'c'. Check if the set contains the character 'b'." \
    "Create a mutable map where the keys are strings (representing names) and the values are integers (representing ages). Add three entries to the map. Then, retrieve the age of a specific person." \
    "Write a Kotlin program that iterates through a list of integers and prints only the even numbers."

process_problems "HigherOrderFunctions" "basics/higher_order_functions" \
    "Write a higher-order function named \`applyOperation\` that takes an integer and a function (that takes an integer and returns an integer) as input. The \`applyOperation\` function should apply the given function to the integer and return the result. Demonstrate its use with a lambda that squares the integer." \
    "Create a list of strings. Use the \`map\` higher-order function along with a lambda to create a new list containing the length of each string in the original list." \
    "Create a list of integers. Use the \`filter\` higher-order function along with a lambda to create a new list containing only the numbers greater than 5." \
    "Write a higher-order function named \`performAction\` that takes a string and a function (that takes a string and returns nothing) as input. The \`performAction\` function should execute the given function with the string. Demonstrate its use with a lambda that prints the string to the console." \
    "Create a list of integers. Use the \`forEach\` higher-order function along with a lambda to print each number in the list multiplied by 3."

# Section III: Usability
process_problems "ExtensionFunctions" "advanced/extension_functions_properties" \
    "Write an extension function for the \`String\` class that returns the string with the first letter capitalized." \
    "Create an extension function for the \`List<Int>\` class that returns the sum of all the positive numbers in the list." \
    "Write an extension function for a custom class \`Point\` (with \`x\` and \`y\` properties) that calculates its distance from the origin (0, 0)." \
    "Create an extension function for the \`Int\` type that returns \`true\` if the number is even, and \`false\` otherwise (with a different name than the standard \`isEven\`)." \
    "Write an extension function for a nullable \`String?\` that returns an empty string if the string is null, otherwise returns the original string."

process_problems "NamedAndDefaultArguments" "advanced/named_default_arguments" \
    "Write a Kotlin function \`greet\` that takes \`name\` (String) and \`greeting\` (String, default value \"Hello\") as arguments. Call this function using both positional and named arguments." \
    "Create a function \`formatAddress\` with parameters \`street\`, \`city\`, \`state\`, and an optional \`zipCode\` (default value null). Call this function with and without providing the zip code, using named arguments." \
    "Write a function \`calculateVolume\` for a box with parameters \`length\`, \`width\`, and \`height\` (all with default values of 1). Call this function with different combinations of arguments using both positional and named arguments." \
    "Define a function \`sendMessage\` with parameters \`recipient\`, \`message\`, and an optional \`priority\` (default \"normal\"). Call this function specifying only the recipient and message using named arguments." \
    "Create a function \`processData\` with several optional boolean flags as arguments (e.g., \`logToFile\`, \`sendEmail\`, \`compressData\`, all defaulting to false). Call this function enabling only \`sendEmail\` using named arguments."

process_problems "Overloading" "advanced/overloading" \
    "Write two functions named \`printInfo\`. One should take a \`String\` as input and print \"Information: [string]\". The other should take an \`Int\` as input and print \"Number: [int]\"." \
    "Create a class \`Calculator\` with a function \`add\` that takes two integers and returns their sum. Overload this function to also accept two doubles and return their sum." \
    "Write a function \`display\` that can take either a single \`String\` or a \`String\` and an \`Int\` as arguments and print them accordingly." \
    "Create a function \`findArea\` that can calculate the area of a circle (given radius) or a rectangle (given length and width)." \
    "Write a function \`processInput\` that can take a single \`List<String>\` or a variable number of \`String\` arguments."

process_problems "WhenExpressions" "basics/control_flow" \
    "Write a Kotlin program that takes an integer representing a day of the week (1 for Sunday, 2 for Monday, etc.) and prints the name of the day using a \`when\` expression." \
    "Write a function that takes a character representing a grade ('A', 'B', 'C', 'D', 'F') and returns a corresponding description (\"Excellent\", \"Good\", etc.) using a \`when\` expression." \
    "Write a \`when\` expression that checks the type of a variable of type \`Any\`. If it's a String, print its length. If it's an Int, print its value squared. Otherwise, print \"Unknown type\"." \
    "Write a function that takes an integer score and returns a letter grade (\"A\" if score >= 90, \"B\" if 80-89, etc.) using a \`when\` expression with ranges." \
    "Write a \`when\` expression that checks if a given number is positive, negative, or zero without using explicit conditions in each case."

process_problems "Enumerations" "advanced/enumerations" \
    "Define an \`enum class\` named \`DayOfWeek\` with values for each day of the week (SUNDAY, MONDAY, etc.). Write a program that prints the name of the current day." \
    "Create an \`enum class\` named \`Color\` with values RED, GREEN, BLUE. Add a property to each enum constant to store its RGB value (e.g., RED(255, 0, 0))." \
    "Define an \`enum class\` named \`TrafficLight\` with values RED, YELLOW, GREEN. Add a method to the enum that returns the duration for which each light should stay on (e.g., RED -> 60 seconds)." \
    "Write a function that takes a \`DayOfWeek\` enum value as input and prints a message indicating whether it's a weekday or a weekend." \
    "Create an \`enum class\` named \`OrderStatus\` with values PENDING, PROCESSING, SHIPPED, DELIVERED, CANCELLED. Add a method that returns a user-friendly description for each status."

process_problems "DataClasses" "basics/data_classes" \
    "Define a Kotlin \`data class\` named \`Person\` with properties \`name\` (String) and \`age\` (Int). Create an instance and print its \`toString()\` representation." \
    "Create a \`data class\` \`Point\` with \`x\` and \`y\` coordinates. Create two instances with the same values and check if they are equal using \`==\`." \
    "Define a \`data class\` \`Book\` with \`title\`, \`author\`, and \`year\`. Create an instance and use destructuring to get the title and author into separate variables." \
    "Create a \`data class\` \`Car\` with \`make\`, \`model\`, and \`year\`. Write a function that takes a \`Car\` object and returns a copy of it with the year incremented." \
    "Define a \`data class\` \`Address\` with \`street\`, \`city\`, and \`zipCode\`. Create an instance and print its \`hashCode()\` and \`equals()\` results when compared to another instance with the same values."

process_problems "DestructuringDeclarations" "advanced/destructuring_declarations" \
    "Create a \`data class\` \`Point\` with \`x\` and \`y\` properties. Create an instance and use destructuring to assign the \`x\` and \`y\` values to separate variables." \
    "Create a \`Pair\` of a String and an Integer. Use destructuring to assign the first and second elements of the pair to separate variables." \
    "Create a function that returns a \`Triple\` of three integers. Call this function and use destructuring to assign the returned values to three separate variables." \
    "Iterate through a list of \`Person\` data class objects (with \`name\` and \`age\`) using a \`for\` loop and destructuring to access the name and age of each person." \
    "Use destructuring in a lambda expression that takes a \`Map.Entry<String, Int>\` and prints the key and value."

process_problems "NullableTypes" "basics/null_safety" \
    "Declare a nullable String variable and assign it the value \`null\`." \
    "Declare a nullable integer variable and assign it the value 10." \
    "Write a function that takes a nullable boolean as input and prints \"True\" if it's true, \"False\" if it's false, and \"Unknown\" if it's null." \
    "Create a nullable list of strings." \
    "Declare a nullable variable of a custom class type."

process_problems "SafeCallsAndElvisOperator" "basics/null_safety" \
    "Declare a nullable String variable. Use the safe call operator (\`?.\`) to access its length and print the result (which might be null)." \
    "Declare a nullable String variable. Use the safe call operator (\`?.\`) along with the Elvis operator (\`?:\`) to get the length of the string if it's not null, or -1 if it is null." \
    "Create a function that takes a nullable \`Person\` object (with a \`name\` property). Use the safe call operator to access and print the person's name only if the \`Person\` object is not null." \
    "Declare a nullable list of integers. Use the safe call operator to get its size if it's not null, or 0 if it is null." \
    "Combine safe calls and the Elvis operator to access a nested nullable property (e.g., \`person?.address?.city\`) and provide a default value if any part of the chain is null."

process_problems "Non-NullAssertions" "basics/null_safety" \
    "Declare a nullable String variable. Assign it a non-null value. Then, access its length using the non-null assertion operator (\`!!\`). Be prepared for a \`NullPointerException\` if the value were null." \
    "Write a function that takes a nullable String as input. Inside the function, if you are certain the string is not null at a particular point, use the non-null assertion operator to access its properties." \
    "Explain a scenario where you might temporarily use the non-null assertion operator, but also why it's generally recommended to avoid it in favor of safer null handling mechanisms. (No code required, just an explanation)." \
    "Consider a situation where you are interacting with Java code that doesn't have Kotlin's null safety. You receive a String from a Java method that you expect to be non-null. How might you use the non-null assertion operator in this context, and what are the risks?" \
    "Write a program that declares a nullable list. If you are sure the list is initialized later, access its size using the non-null assertion operator after (hypothetically) initializing it."

process_problems "ExtensionsForNullableTypes" "basics/null_safety" \
    "Write an extension function for the nullable \`String?\` type that returns \`true\` if the string is not null and not empty, and \`false\` otherwise." \
    "Create an extension function for a nullable \`List<T>?\` that returns an empty list if the list is null, otherwise returns the original list." \
    "Write an extension function for a nullable \`Int?\` that returns 0 if the integer is null, otherwise returns the integer itself." \
    "Define an extension function for a nullable \`Person?\` class (assuming you have a \`Person\` class with a \`name\` property) that returns \"Unknown\" if the person is null, otherwise returns the person's name." \
    "Create an extension function for a nullable \`String?\` that returns the string in uppercase if it's not null, and \`null\` otherwise."

process_problems "ExtensionProperties" "advanced/extension_functions_properties" \
    "Write an extension property for the \`List<String>\` class that returns the first string in the list, or null if the list is empty." \
    "Create an extension property for the \`Int\` type that returns its square." \
    "Write an extension property for a custom class \`Rectangle\` (with \`length\` and \`width\`) that returns \`true\` if it's a square (length equals width), and \`false\` otherwise." \
    "Create an extension property for the \`MutableList<Int>\` class that returns the sum of all elements in the list." \
    "Write an extension property for the \`String\` class that returns the number of words in the string."

process_problems "BreakAndContinue" "basics/control_flow" \
    "Write a Kotlin program that iterates through numbers from 1 to 10. Use the \`break\` keyword to exit the loop when the number 5 is encountered." \
    "Write a Kotlin program that iterates through numbers from 1 to 10. Use the \`continue\` keyword to skip the number 5 and print all other numbers." \
    "Iterate through a list of strings. If a string has a length less than 3, use \`continue\` to skip it. If a string is equal to \"end\", use \`break\` to exit the loop. Print all other strings." \
    "Use nested loops to iterate through a 2D array of integers. Use \`break\` to exit the inner loop when a specific value (e.g., 0) is found." \
    "Write a \`while\` loop that continues as long as a certain condition is true. Inside the loop, use \`break\` to exit the loop if another condition is met."

# Section IV: Functional Programming
process_problems "Lambdas" "basics/higher_order_functions" \
    "Write a lambda expression that takes an integer as input and returns its square." \
    "Write a lambda expression that takes two strings as input and returns their concatenation." \
    "Create a list of integers and use the \`forEach\` function with a lambda to print each number." \
    "Create a list of strings and use the \`filter\` function with a lambda to get a new list containing only strings that start with the letter 'A'." \
    "Create a lambda expression that takes no arguments and returns the string \"Hello\"."

process_problems "MemberReferences" "basics/higher_order_functions" \
    "Given a list of integers, use a member reference to the \`toString()\` function to convert each integer to its string representation using the \`map\` function." \
    "Create a class \`User\` with a method \`isActive()\` that returns a boolean. Given a list of \`User\` objects, use a member reference to filter the list to include only active users using the \`filter\` function." \
    "Write a function that takes a list of strings and a function reference. Use the function reference with the \`forEach\` function to print each string." \
    "Create a class \`StringUtils\` with a static function \`convertToUpperCase(s: String): String\`. Use a member reference to this static function with the \`map\` function on a list of strings." \
    "Given a list of integers, use a member reference to the addition operator (\`plus\`) with an initial value of 0 in the \`reduce\` function to calculate the sum of the integers. (Note: This might require a slightly different approach depending on the exact operator)."

process_problems "ManipulatingLists" "basics/collections" \
    "Create a list of integers and use the \`filter\` function to get a new list containing only the even numbers." \
    "Create a list of strings and use the \`map\` function to create a new list containing the lengths of each string." \
    "Create a list of integers and use the \`sorted\` function to get a new list with the elements sorted in ascending order." \
    "Create a list of integers and use the \`find\` function to get the first element that is greater than 10." \
    "Create a list of strings and use the \`groupBy\` function to group the strings by their first letter."

process_problems "BuildingMaps" "basics/collections" \
    "Create a list of \`Person\` objects (with \`name\` and \`age\` properties). Use the \`associateBy\` function to create a map where the key is the person's name and the value is the \`Person\` object itself." \
    "Create a list of strings. Use the \`associate\` function to create a map where the key is the string and the value is its length." \
    "Create a list of integers. Use \`associateWith\` to create a map where the keys are the integers and the values are their squares." \
    "Create a list of \`Pair<String, Int>\` representing names and ages. Use the \`toMap\` function to convert this list into a \`Map<String, Int>\`." \
    "Start with an empty mutable map. Iterate through a list of words and count the occurrences of each word, storing the counts in the map."

process_problems "Sequences" "advanced/sequences" \
    "Create a sequence of numbers from 1 to 10 and use the \`map\` and \`filter\` operations on it. Observe the intermediate steps when using sequences compared to lists. (Conceptual, can be demonstrated with print statements within the lambda)." \
    "Create a sequence of strings and use the \`take\` and \`toList\` operations to get the first 5 strings as a list." \
    "Generate an infinite sequence of even numbers using \`generateSequence\` and take the first 10 numbers as a list." \
    "Create a sequence from a list of integers and use the \`reduce\` operation to find the product of all the numbers." \
    "Compare the performance of using a \`List\` vs. a \`Sequence\` for a chain of \`map\` and \`filter\` operations on a large dataset. (Conceptual or with a simple performance measurement)."

process_problems "LocalFunctions" "advanced/local_functions" \
    "Write a function \`validateInput\` that takes a string as input. Inside this function, define a local function \`isValidLength\` that checks if the string's length is within a certain range (e.g., 5 to 10). Use the local function to validate the input." \
    "Create a function \`processNumbers\` that takes a list of integers. Inside this function, define a local function \`isPositive\` that checks if a number is greater than 0. Use this local function with the \`filter\` operation on the list." \
    "Write a function \`calculateDiscountedPrice\` that takes an original price and a discount percentage. Inside this function, define a local function \`applyDiscount\` that calculates the discounted price. Use the local function to calculate and return the final price." \
    "Define a function \`formatName\` that takes a first name and a last name. Inside this function, create a local function \`capitalize\` that capitalizes a given string. Use the local function to format both the first and last names before returning the full name." \
    "Write a function that takes a list of email addresses. Inside this function, define a local function \`isValidEmail\` that performs a basic check for the presence of \"@\" and \".\". Use this local function to filter the list and return only the valid email addresses."

process_problems "FoldingLists" "basics/higher_order_functions" \
    "Use the \`fold\` function on a list of integers to calculate their sum, starting with an initial value of 0." \
    "Use the \`fold\` function on a list of strings to concatenate them into a single string, separated by commas, starting with an empty string." \
    "Use the \`fold\` function on a list of integers to find the product of all the numbers, starting with an initial value of 1." \
    "Use the \`fold\` function on a list of strings to build a map where the keys are the strings and the values are their lengths." \
    "Use the \`fold\` function on a list of \`Person\` objects to create a string containing the names of all people, separated by \" and \", starting with an empty string."

process_problems "Recursion" "advanced/recursion" \
    "Write a recursive function to calculate the factorial of a given non-negative integer." \
    "Write a recursive function to calculate the nth Fibonacci number." \
    "Write a recursive function to find the sum of all elements in a list of integers." \
    "Write a recursive function to reverse a given string." \
    "Write a recursive function to implement binary search on a sorted list of integers."

# Section V: Object-Oriented Programming
process_problems "Interfaces" "advanced/sealed_classes_interfaces" \
    "Define a Kotlin interface named \`Clickable\` with a method \`onClick()\`. Create two classes, \`Button\` and \`TextView\`, that implement this interface." \
    "Create an interface \`Drawable\` with a method \`draw()\`. Create classes \`Circle\` and \`Square\` that implement \`Drawable\` and provide their own drawing logic." \
    "Define an interface \`Movable\` with methods \`move(dx: Int, dy: Int)\`. Create a class \`Point\` that implements \`Movable\`." \
    "Create two interfaces, \`Flyable\` with a method \`fly()\` and \`Swimmable\` with a method \`swim()\`. Create a class \`Duck\` that implements both interfaces." \
    "Define an interface \`Comparable<T>\` (the built-in one). Create a class \`Book\` with properties \`title\` and \`price\` and make it implement \`Comparable\` to compare books based on their price."

process_problems "ComplexConstructors" "advanced/constructors" \
    "Create a class \`Student\` with a primary constructor taking \`name\`. Add a secondary constructor that takes \`name\` and \`major\`, calling the primary constructor." \
    "Define a class \`Rectangle\` with a primary constructor taking \`length\` and \`width\`. Add a secondary constructor that takes the side length for a square and calls the primary constructor with equal length and width." \
    "Create a class \`Person\` with a primary constructor taking \`firstName\` and \`lastName\`. Add a secondary constructor that takes a full name string and parses it to initialize \`firstName\` and \`lastName\`." \
    "Define a class \`Animal\` with a primary constructor taking \`name\`. Create a subclass \`Dog\` with a secondary constructor that takes \`name\` and \`breed\`, calling the superclass constructor with the name." \
    "Create a class \`Order\` with a primary constructor taking a list of \`Item\` objects. Add a secondary constructor that takes a variable number of \`Item\` objects and converts them to a list before calling the primary constructor."

process_problems "SecondaryConstructors" "advanced/constructors" \
    "Define a Kotlin class \`Address\` with properties \`street\`, \`city\`, and \`zipCode\`, initialized in the primary constructor. Add a secondary constructor that takes a comma-separated string representing the full address and parses it to initialize the properties." \
    "Create a class \`Employee\` with a primary constructor taking \`name\` and \`employeeId\`. Add a secondary constructor that takes only the \`name\` and assigns a default value or generates a unique ID for the \`employeeId\`." \
    "Define a class \`Product\` with a primary constructor taking \`name\` and \`price\`. Add a secondary constructor that takes \`name\` and a price as a string, converting the string to a double." \
    "Create a class \`Event\` with a primary constructor taking \`title\` and \`date\`. Add a secondary constructor that takes \`title\` and a date as a string in a specific format, parsing the string to create a \`Date\` object." \
    "Define a class \`Shape\` with a primary constructor. Add secondary constructors for creating specific shapes like \`Circle\` (taking radius) and \`Square\` (taking side), which internally call the primary constructor with appropriate default or calculated values."

process_problems "Inheritance" "advanced/inheritance" \
    "Create a base class \`Animal\` with a property \`name\` and a function \`makeSound()\`. Create two subclasses, \`Dog\` and \`Cat\`, that inherit from \`Animal\` and override the \`makeSound()\` function with their specific sounds." \
    "Define a base class \`Shape\` with a function \`calculateArea()\` that returns 0. Create subclasses \`Rectangle\` and \`Circle\` that inherit from \`Shape\` and override \`calculateArea()\` to calculate their respective areas." \
    "Create a base class \`Vehicle\` with properties \`make\` and \`model\`. Create subclasses \`Car\` and \`Motorcycle\` that inherit from \`Vehicle\` and add their own specific properties (e.g., \`numberOfDoors\` for \`Car\`, \`hasSidecar\` for \`Motorcycle\`)." \
    "Define a base class \`Employee\` with properties \`name\` and \`salary\`. Create a subclass \`Manager\` that inherits from \`Employee\` and adds a property \`department\` and a function \`assignTask()`." \
    "Create a base class \`BankAccount\` with methods \`deposit()\` and \`withdraw()\`. Create a subclass \`SavingsAccount\` that inherits from \`BankAccount\` and adds a property \`interestRate\` and a method \`applyInterest()`."

process_problems "BaseClassInitialization" "advanced/inheritance" \
    "Create a base class \`Person\` with a constructor that takes a \`name\`. Create a subclass \`Student\` whose constructor takes \`name\` and \`studentId\` and calls the superclass constructor with the \`name\`." \
    "Define a base class \`Shape\` with a constructor that takes a \`color\`. Create a subclass \`Circle\` whose constructor takes \`color\` and \`radius\` and passes the \`color\` to the superclass constructor." \
    "Create a base class \`Animal\` with a constructor that takes a \`name\`. Create a subclass \`Dog\` whose constructor takes \`name\` and \`breed\` and passes the \`name\` to the superclass constructor." \
    "Define a base class \`Vehicle\` with a constructor that takes \`make\` and \`model\`. Create a subclass \`Car\` whose constructor takes \`make\`, \`model\`, and \`numberOfDoors\` and passes \`make\` and \`model\` to the superclass constructor." \
    "Create a base class \`Product\` with a constructor that takes \`name\` and \`price\`. Create a subclass \`DiscountedProduct\` whose constructor takes \`name\`, \`price\`, and \`discountPercentage\` and passes \`name\` and \`price\` to the superclass constructor."

process_problems "AbstractClasses" "advanced/abstract_classes" \
    "Define an \`abstract class\` named \`Graphic\` with an abstract function \`draw()\`. Create concrete subclasses \`Line\`, \`Circle\`, and \`Rectangle\` that implement the \`draw()\` function." \
    "Create an \`abstract class\` \`Shape\` with an abstract property \`area\` (Double). Create concrete subclasses \`Circle\` and \`Square\` that override the \`area\` property." \
    "Define an \`abstract class\` \`Transport\` with a non-abstract property \`speed\` and an abstract function \`start()\`. Create concrete subclasses \`Car\` and \`Airplane\` that implement \`start()`." \
    "Create an \`abstract class\` \`FileProcessor\` with an abstract function \`processFile(filePath: String)\`. Create concrete subclasses \`TextFileProcessor\` and \`ImageFileProcessor\`." \
    "Define an \`abstract class\` \`Logger\` with a non-abstract function \`log(message: String)\` that prints the message with a timestamp, and an abstract function \`writeLog(message: String)\` that needs to be implemented by concrete loggers (e.g., file logger, console logger)."

process_problems "Upcasting" "advanced/inheritance" \
    "Create a base class \`Animal\` and a subclass \`Dog\`. Create an instance of \`Dog\` and assign it to a variable of type \`Animal\`. Demonstrate accessing members that are common to both classes." \
    "Define an interface \`Shape\` and two implementing classes \`Circle\` and \`Rectangle\`. Create instances of \`Circle\` and \`Rectangle\` and assign them to variables of type \`Shape\`." \
    "Create a base class \`Vehicle\` and two subclasses \`Car\` and \`Motorcycle\`. Create a list that can hold \`Vehicle\` objects and add instances of both \`Car\` and \`Motorcycle\` to it." \
    "Define a base class \`Employee\` and a subclass \`Manager\`. Write a function that takes an \`Employee\` as input. Call this function with an instance of \`Manager\`." \
    "Create a base class \`Product\` with a function \`getDescription()\`. Create a subclass \`Book\` that overrides this function. Create an instance of \`Book\` and upcast it to \`Product\`. Call the \`getDescription()\` function on the upcasted object and observe the behavior."

process_problems "Polymorphism" "advanced/polymorphism" \
    "Create a base class \`Shape\` with a function \`calculateArea()\` that returns 0. Override this function in subclasses \`Circle\` and \`Rectangle\` to calculate their respective areas. Create a list of \`Shape\` objects containing both circles and rectangles, and iterate through the list, calling \`calculateArea()\` on each object." \
    "Define an interface \`Drawable\` with a method \`draw()\`. Implement this interface in classes \`Circle\` and \`Square\`. Create a list of \`Drawable\` objects and call the \`draw()\` method on each object." \
    "Create a base class \`Animal\` with a function \`makeSound()\`. Override this function in subclasses \`Dog\` and \`Cat\`. Write a function that takes an \`Animal\` object and calls its \`makeSound()\` method. Call this function with instances of \`Dog\` and \`Cat\`." \
    "Define a base class \`Operation\` with an \`execute()\` function. Create subclasses \`AddOperation\` and \`SubtractOperation\` that implement \`execute()\`. Write a function that takes an \`Operation\` object and calls its \`execute()\` method." \
    "Create a base class \`PaymentMethod\` with a function \`processPayment(amount: Double)\`. Create subclasses \`CreditCardPayment\` and \`PayPalPayment\` that override this function with their specific payment processing logic. Write a function that takes a \`PaymentMethod\` object and an amount, and calls the \`processPayment()\` method."

process_problems "Composition" "advanced/composition" \
    "Create a class \`Engine\` with a property \`horsepower\`. Create a class \`Car\` that has an \`Engine\` as a property (composition)." \
    "Define a class \`Address\` with properties \`street\`, \`city\`, and \`zipCode\`. Create a class \`Person\` that has an \`Address\` as a property (composition)." \
    "Create a class \`Wheel\`. Create a class \`Car\` that has a list of \`Wheel\` objects as a property (composition)." \
    "Define a class \`CPU\` and a class \`Memory\`. Create a class \`Computer\` that has instances of \`CPU\` and \`Memory\` as properties (composition)." \
    "Create a class \`Logger\` with a \`logMessage(message: String)\` function. Create a class \`UserService\` that uses a \`Logger\` instance to log its operations (composition)."

process_problems "InheritanceAndExtensions" "advanced/extension_functions_properties" \
    "Create a base class \`Shape\` with a function \`calculateArea()\`. Create a subclass \`Rectangle\`. Write an extension function for \`Rectangle\` that calculates its perimeter." \
    "Define a base class \`Animal\` with a property \`name\`. Create a subclass \`Dog\`. Write an extension function for \`Dog\` that makes it bark (prints \"Woof!\")." \
    "Create an interface \`Movable\` with a function \`move(dx: Int, dy: Int)\`. Create a class \`Point\` that implements \`Movable\`. Write an extension function for \`Point\` that calculates its distance from the origin (0, 0)." \
    "Define a base class \`Vehicle\` with properties \`make\` and \`model\`. Create a subclass \`Car\`. Write an extension property for \`Car\` that returns a formatted string containing its make and model." \
    "Create a base class \`BankAccount\` with methods \`deposit()\` and \`withdraw()\`. Create a subclass \`SavingsAccount\`. Write an extension function for \`SavingsAccount\` that applies interest based on a given rate."

process_problems "ClassDelegation" "advanced/delegation" \
    "Define an interface \`Soundable\` with a method \`playSound()\`. Create a class \`Speaker\` that implements \`Soundable\`. Create another class \`Radio\` that implements \`Soundable\` by delegating to an instance of \`Speaker\`." \
    "Create an interface \`Movable\` with methods \`move(x: Int, y: Int)\`. Create a class \`Point\` that implements \`Movable\`. Create another class \`ShapeController\` that implements \`Movable\` by delegating to a \`Point\` object." \
    "Define an interface \`Writable\` with a method \`write(data: String)\`. Create a class \`FileWriter\` that implements \`Writable\`. Create another class \`BufferedFileWriter\` that implements \`Writable\` by delegating to a \`FileWriter\`." \
    "Create an interface \`ListOperations<T>\` with methods \`add(item: T)\` and \`remove(item: T)\`. Create a class \`ArrayListImpl<T>\` that implements \`ListOperations\`. Create another class \`SynchronizedList<T>\` that implements \`ListOperations\` by delegating to an \`ArrayListImpl\` and adding synchronization." \
    "Define an interface \`Calculation\` with a method \`calculate(a: Int, b: Int): Int\`. Create a class \`Adder\` that implements \`Calculation\`. Create another class \`LoggingCalculator\` that implements \`Calculation\` by delegating to an \`Adder\` and logging the operation before and after execution."

process_problems "Downcasting" "advanced/inheritance" \
    "Create a base class \`Shape\` and a subclass \`Circle\`. Create an instance of \`Circle\` and upcast it to \`Shape\`. Then, downcast it back to \`Circle\` and access a member specific to the \`Circle\` class." \
    "Define an interface \`Drawable\` and two implementing classes \`Circle\` and \`Square\`. Create a list of \`Drawable\` objects containing both. Iterate through the list and use the \`is\` operator to check the type of each object. If it's a \`Circle\`, downcast it and access its radius." \
    "Create a base class \`Vehicle\` and two subclasses \`Car\` and \`Motorcycle\`. Create a \`Vehicle\` variable that actually holds a \`Car\` object. Try to downcast it to \`Motorcycle\` and observe the result. Use the safe cast operator (\`as?\`) to handle potential failures." \
    "Define a base class \`Employee\` and a subclass \`Manager\`. Write a function that takes an \`Employee\` and tries to downcast it to \`Manager\`. If successful, access a manager-specific property." \
    "Create a list of \`Any\` that contains a mix of \`String\` and \`Int\` objects. Iterate through the list and use the \`is\` operator to check the type. If it's a \`String\`, print its length. If it's an \`Int\`, print its value multiplied by 2."

process_problems "SealedClasses" "advanced/sealed_classes_interfaces" \
    "Define a \`sealed class\` named \`Operation\` that can represent either an \`Add\` operation (with two integer operands) or a \`Subtract\` operation (with two integer operands)." \
    "Write a function that takes an instance of the \`Operation\` sealed class from the previous question. Use a \`when\` expression to perform the corresponding arithmetic operation and return the result. Ensure that your \`when\` expression is exhaustive." \
    "Create a \`sealed class\` named \`Result\` that can be either a \`Success\` (containing some data of type \`T\`) or an \`Error\` (containing an error message). Make \`Success\` a data class." \
    "Consider a scenario where you are modeling different types of network requests: \`Loading\`, \`Success\` (with data), and \`Error\` (with a message). Explain why using a \`sealed class\` would be a better choice than a regular class hierarchy in this case. (No code required for this question, just an explanation)." \
    "Define a \`sealed class\` \`Shape\` with subclasses \`Circle\` (radius: Double), \`Rectangle\` (length: Double, width: Double), and \`Triangle\` (base: Double, height: Double). Write a function that calculates the area of any \`Shape\` using a \`when\` expression."

process_problems "TypeChecking" "advanced/type_checking" \
    "Write a function that takes a parameter of type \`Any\`. Inside the function, use the \`is\` operator to check if the parameter is a \`String\`. If it is, print its length." \
    "Create a list containing a mix of different data types (String, Int, Boolean). Iterate through the list and use the \`is\` operator to count the number of integers in the list." \
    "Write a function that takes a \`Shape\` (could be a \`Circle\` or a \`Rectangle\`). Use the \`when\` expression with type checking (\`is Circle\`, \`is Rectangle\`) to calculate and print the area of the shape." \
    "Create a function that takes a list of \`Any\`. Iterate through the list and use the \`as?\` operator to safely cast each element to a \`String\`. If the cast is successful, print the uppercase version of the string." \
    "Write a function that takes a parameter of type \`Any\`. Use the \`when\` expression with type checking to perform different actions based on whether the parameter is an \`Int\`, a \`Double\`, or a \`String\`."

process_problems "NestedClasses" "advanced/nested_classes" \
    "Create a class \`Outer\` with a nested class \`Nested\`. Demonstrate how to create an instance of the nested class." \
    "Define a class \`Document\` with a nested class \`Metadata\` that contains information about the document (e.g., author, creation date). Create an instance of \`Document\` and then an instance of its \`Metadata\`." \
    "Create a class \`Computer\` with a nested class \`Processor\` that has a \`model\` property. Create an instance of \`Computer\` and then access the \`model\` of its \`Processor\`." \
    "Define a class \`Car\` with a nested class \`Engine\` that has a function \`start()\`. Create an instance of \`Car\` and then call the \`start()\` function of its \`Engine\`." \
    "Create a class \`House\` with a nested class \`Room\` that has a property \`name\`. Create an instance of \`House\` and then create multiple instances of its \`Room\`, each with a different name."

process_problems "Objects" "advanced/objects" \
    "Create an \`object\` declaration named \`DatabaseConnection\` that has a function \`connect()\` and a function \`disconnect()\`. Demonstrate how to use this singleton object." \
    "Create a class \`Configuration\` with a companion object that holds default configuration values (e.g., \`DEFAULT_TIMEOUT\`). Access these values using the companion object's name." \
    "Write a function that takes a \`Comparator\` object as an argument. Create an anonymous object that implements the \`Comparator<Int>\` interface and pass it to the function." \
    "Create a class \`Logger\` with a companion object that has a \`log(message: String)\` function. Demonstrate how to use the companion object's function to log messages." \
    "Create a class \`MathUtils\` with an \`object\` declaration inside it named \`Constants\` that holds mathematical constants like \`PI\`. Access these constants."

process_problems "InnerClasses" "advanced/inner_classes" \
    "Create an \`Outer\` class with an \`inner class\` \`Inner\`. The \`Inner\` class should have access to the members of the \`Outer\` class. Demonstrate this by having the \`Inner\` class access a property of the \`Outer\` class." \
    "Define a class \`House\` with an inner class \`Room\` that has a property \`name\`. The \`Room\` class should also have a reference to the \`House\` it belongs to. Create an instance of \`House\` and then an instance of its \`Room\`, accessing the \`House\` reference from the \`Room\`." \
    "Create a class \`Car\` with an inner class \`Engine\` that has a function \`start()\`. The \`start()\` function should be able to access properties of the \`Car\` class. Demonstrate this." \
    "Define a class \`Document\` with an inner class \`Page\` that has a \`content\` property. The \`Page\` should also have access to the \`Document\`'s title. Create a \`Document\` and then multiple \`Page\` objects associated with it." \
    "Create a class \`ListWrapper<T>\` with an inner class \`Iterator\`. The \`Iterator\` should be able to iterate over the elements of the \`ListWrapper\`. Implement a basic \`hasNext()\` and \`next()\` functionality in the \`Iterator\`."

process_problems "CompanionObjects" "advanced/companion_objects" \
    "Create a class \`Factory\` with a companion object that has a \`create()\` function to instantiate the \`Factory\` class." \
    "Define a class \`Counter\` with a companion object that holds a static \`count\` variable, incremented each time a \`Counter\` instance is created." \
    "Create a class \`StringUtils\` with a companion object that has a utility function \`isNullOrEmpty(s: String): Boolean\`." \
    "Define a class \`DatabaseHelper\` with a companion object that manages the database connection (e.g., \`getConnection()\`, \`closeConnection()\`)." \
    "Create a class \`User\` with a companion object that provides a function \`findById(id: Int): User?\` to retrieve a user from a hypothetical database."

process_problems "ExceptionHandling" "advanced/exception_handling" \
    "Write a Kotlin program that tries to divide an integer by zero and catches the resulting \`ArithmeticException\`, printing an error message." \
    "Write a function that takes a file path as input. Use a \`try-catch\` block to attempt to read the contents of the file. Catch the \`FileNotFoundException\` if the file does not exist and print an appropriate message." \
    "Write a program that tries to parse an integer from a string. Use a \`try-catch\` block to handle the \`NumberFormatException\` if the string is not a valid integer." \
    "Create a function that might throw an \`IOException\`. Use a \`try-catch-finally\` block to handle the exception and ensure that a cleanup operation (e.g., closing a resource) is performed in the \`finally\` block." \
    "Write a function that takes an index and a list. If the index is out of bounds, throw an \`IndexOutOfBoundsException\`. Call this function from a \`try-catch\` block and handle the exception."

process_problems "CheckInstructions" "advanced/check_instructions" \
    "Write a function that takes an integer as input. Use the \`check\` function to ensure that the integer is positive. If not, throw an \`IllegalStateException\` with an appropriate message." \
    "Create a function that takes a list. Use the \`check\` function to ensure that the list is not empty before processing its elements." \
    "Write a function that takes a string. Use the \`checkNotNull\` function to ensure that the string is not null before accessing its length." \
    "Create a function that takes an index and a list. Use the \`check\` function to ensure that the index is within the valid bounds of the list." \
    "Write a function that takes a user object (assuming it has an \`isActive\` property). Use the \`check\` function to ensure the user is active before performing an operation that requires an active user."

process_problems "TheNothingType" "advanced/nothing_type" \
    "Write a function that always throws an \`IllegalStateException\`. Declare its return type as \`Nothing\`." \
    "Create a function that enters an infinite loop. Declare its return type as \`Nothing\`." \
    "Write a function that takes a nullable string. If the string is null, call another function that returns \`Nothing\`. Observe how this affects the control flow." \
    "Explain the purpose and characteristics of the \`Nothing\` type in Kotlin. (No code required, just an explanation)." \
    "Write a function that simulates a program exit. Declare its return type as \`Nothing\` and use a function like \`exitProcess(0)\`."

process_problems "ResourceCleanup" "advanced/resource_cleanup" \
    "Write a Kotlin program that reads from a file. Use the \`use\` function to automatically close the file after reading." \
    "Simulate a network connection (you don't need to establish a real connection). Create a class \`NetworkResource\` with \`open()\` and \`close()\` methods. Use the \`use\` function to ensure the \`close()\` method is called even if an exception occurs during the operation." \
    "Create a class \`DatabaseTransaction\` with \`begin()\`, \`commit()\`, and \`rollback()\` methods. Use the \`use\` function to ensure that either \`commit()\` is called if the operation is successful, or \`rollback()\` is called if an exception occurs." \
    "Write a function that takes a \`java.io.InputStream\`. Use the \`use\` function to read some data from the stream and ensure it is closed afterward." \
    "Create a simple custom resource class that implements the \`Closeable\` interface. Use the \`use\` function with an instance of this class to demonstrate automatic resource cleanup."

process_problems "Logging" "advanced/logging" \
    "Use the \`println\` function for basic logging to the console. Log informational messages, warnings, and errors." \
    "Explore a Kotlin logging library (like SLF4j with Logback or Kotlin Logging). Configure the library and log messages with different severity levels. (This might require setting up a dependency)." \
    "Write a function that logs its entry and exit points, as well as any important intermediate values." \
    "Implement a simple logging utility function that takes a tag and a message and prints them in a formatted way." \
    "Discuss the importance of logging levels (DEBUG, INFO, WARN, ERROR, etc.) and how they are used in debugging and production environments. (No code required, just a discussion)."

# Section VII: Power Tools
process_problems "ExtensionLambdas" "advanced/extension_lambdas" \
    "Write an extension function for the \`StringBuilder\` class that takes a lambda with a \`StringBuilder\` receiver. Inside the lambda, append some text to the \`StringBuilder\`." \
    "Create an extension function for a \`List<Int>\` that takes an extension lambda with an \`Int\` receiver. Inside the lambda, perform some operation on each integer and return a new value. Use this to create a new list of modified integers." \
    "Write an extension function for a class \`Config\` that takes an extension lambda to configure the \`Config\` object's properties." \
    "Create an extension function for a \`Map<String, Any>\` that takes an extension lambda allowing you to easily add or modify entries in the map." \
    "Write an extension function for a \`File\` that takes an extension lambda allowing you to easily read or write content to the file."

process_problems "ScopeFunctions" "advanced/scope_functions" \
    "You have a nullable String variable. Use the \`let\` scope function to print the length of the string only if it's not null." \
    "Create a \`StringBuilder\` object. Use the \`run\` scope function to append the strings \"Hello\" and \"World!\" to it and then return the final string." \
    "You have a \`Person\` object with properties \`name\` and \`age\`. Use the \`with\` scope function to access and print both the name and age of the person." \
    "Create a \`MutableList<Int>\`. Use the \`apply\` scope function to add the numbers 1, 2, and 3 to the list and then return the modified list." \
    "You have a String variable. Use the \`also\` scope function to print the string and then return the original string."

process_problems "CreatingGenerics" "advanced/generics" \
    "Write a generic function that takes a list of any type and returns the first element of the list, or \`null\` if the list is empty." \
    "Create a generic class named \`Box\` that can hold an item of any type. Provide methods to put an item in the box and retrieve the item." \
    "Write a generic function that takes two lists of the same type and returns a new list containing all the elements from both lists. Ensure that the type parameter is constrained to be a subclass of \`Number\`." \
    "Create a generic interface named \`Repository\` with a function \`getById(id: ID): T\`. Implement this interface for a specific type, such as a \`UserRepository\` that retrieves \`User\` objects by their integer ID." \
    "Write a generic function that takes a list of elements and a comparator function. The function should return the element in the list that is considered the \"maximum\" according to the comparator."

process_problems "OperatorOverloading" "advanced/operator_overloading" \
    "Create a class \`Point\` with integer properties \`x\` and \`y\`. Overload the \`+\` operator to add two \`Point\` objects together (adding their respective x and y coordinates) and return a new \`Point\`." \
    "Create a class \`Counter\` with an integer property \`count\`. Overload the \`++\` operator (both prefix and postfix) to increment the \`count\`." \
    "Create a class \`MyList<T>\` and overload the \`[]\` operator to allow accessing elements by index (similar to a regular list)." \
    "Create a class \`Vector\` with integer properties \`x\` and \`y\`. Overload the \`*\` operator to perform scalar multiplication (multiplying both x and y by a given integer)." \
    "Create a class \`ComplexNumber\` with properties \`real\` and \`imaginary\`. Overload the \`+\` operator to add two \`ComplexNumber\` objects."

process_problems "PropertyDelegation" "advanced/property_delegation" \
    "Declare a \`lazy\` property in a class. Demonstrate that its initializer is only executed when the property is accessed for the first time." \
    "Use the \`observable\` delegate for a property in a class. Print a message whenever the property's value changes." \
    "Use the \`vetoable\` delegate for a property in a class. Prevent the property from being set to a value greater than 10." \
    "Create a simple custom delegate class for a property that transforms the value before storing it (e.g., converts a string to uppercase)." \
    "Use the \`map\` delegate to store and retrieve a property's value from a \`MutableMap\`."

process_problems "LateInitialization" "advanced/late_initialization" \
    "Declare a \`lateinit var\` property in a class. Initialize it in the \`init\` block or a function. Access the property after initialization." \
    "Write a test case where you intentionally try to access a \`lateinit var\` property before it has been initialized and observe the \`UninitializedPropertyAccessException\`." \
    "Create a class with two properties: one initialized directly and another using \`lateinit\`. Demonstrate the difference in their initialization timing." \
    "Use \`lateinit var\` for a dependency that will be injected or set up later in the lifecycle of an object (e.g., in an Android \`Activity\`'s \`onCreate\`)." \
    "Explain the use cases and potential risks of using \`lateinit var\` in Kotlin. (No code required, just an explanation)."

echo "Problem files with problem statements and basic skeleton created in the respective directories."