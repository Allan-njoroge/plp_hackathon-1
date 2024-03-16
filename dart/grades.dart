import 'dart:io';

var name;
var marks;

void grade(name, marks) {
  String remarks = (marks > 85)
      ? "\nThat's EXCELLENT, $name\n"
      : (marks > 75 && marks <= 85)
          ? "\nThat's VERY GOOD, $name\n"
          : (marks > 65 && marks <= 75)
              ? "\nThat's GOOD, $name\n"
              : "\nThat's AVERAGE, $name\n";

  print(remarks);
}

void details() {
  stdout.write("\nName: ");
  name = stdin.readLineSync()!;

  stdout.write("Marks: "); //First number
  marks = int.parse(stdin.readLineSync()!);
}

void main() {
  details();

  if (marks > 100 || marks < 0) {
    print("Invlid input. Please try again");
    details();
  } else {
    grade(name, marks);
  }
}
