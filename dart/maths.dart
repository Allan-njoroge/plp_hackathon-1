import 'dart:io';

// function that does the subtraction of numbers
int subtract(num1, num2) {
  int largest = (num1 > num2) ? num1 : num2; //Finding the largest number
  int smallest = (num1 < num2) ? num1 : num2; // Finding the smalllest number

  int difference = largest - smallest;
  return difference;
}

// Main function
void main() {
  print("\t\t\t\tSUBTRACT NUMBERS.");

  stdout.write("\nNumber 1: "); //First number
  int num1 = int.parse(stdin.readLineSync()!);

  stdout.write("\nNumber 2: "); //Second number
  int num2 = int.parse(stdin.readLineSync()!);

  int result = subtract(num1, num2); //Declaring and finding the result

  print("\nResult: $result"); //output of the result
}
