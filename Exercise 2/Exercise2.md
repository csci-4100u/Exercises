# Exercise 2 - Dart OOP
This exercise is expected you to get yourself familiarize with OOP concepts in Dart. These exercises assume you already have setup your environment for working with Dart.

## Instructions
* You are required to setup the environment that you are planning to use this term for this course
* You can also use online compilers if you want, however, installing IDEs on your local machine gives you more freedom and control
* You can work on multiple IDEs as well to get a feel of how they work. This would give you a choice of using among various IDEs.
* This exercise is for your practice, no need to submit it for marking.

## Questions
1.	Create a class `Employee` with the following private members
 * empno (integer)
 * empname (string)
 * salary (integer)  
Write proper `getters` and `setters` for these properties. Write a public method `showInfo()` which should display all information about the employee. 
Inherit a class `Developer` from Employee with a single instance variable `skillset (string)`. Implement proper `getter` and `setter` for `skillset`. Implement a public method `showInfo()` which should display all information about the developer.
Create an object of `Employee` and show his/her details using `showInfo()` method. Create an object of `Developer` and show his/her details using `showInfo()` method. 

2. A code is provided below in which AllInOne class is expected to get all the functionality from Printer and Scanner class. However, Dart does not support multiple inheritance.   
Modify the code below to use Mixin in dart so that functionality of Printer and Scanner can be used in AllInOne class.

    ```
    class Printer {
        void printX(doc) {
        //Print the doc  
        }
    }
    ```
    ```
    class Scanner {
      String scanX() {
        //Scan
        String x = "Scanned";
        return x;
      }
    }
    ```
    ```
    class AllInOne extends Printer , Scanner{
      void showStatus() {
        print("Ready");
      }
    }
    ```


3. Write a program in Dart to demonstrate asynchronous programming. The program should be able to sum all the integers from `0` to `1000000000`. This would take your system some time to produce the output. Since Dart is more of single-threaded in nature, you need to create a `Future` to avoid halt of your main method. Please note the followings:
* You can write the whole program in the main method.
* Import dart:async to enable you to use Future constructor. (Hint: Use simple Future() constructor to create a basic Future constructor and provide it an anonymous function).
* The anonymous function should run a loop from 0 to 1000000000 and calculate the sum of all of these numbers (Hint: Create a double variable called sum to hold the total).
* Use one of the states of Future (Uncompleted, Completed with Value, Completed with Error) to display the value of the variable holding the total.
* Optional: Put a print statement before and after the future to see the behavior of the program.
