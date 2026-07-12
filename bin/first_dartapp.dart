import 'package:first_dartapp/first_dartapp_lib.dart' as lib;
import "dart:math";

void main(){

String? name = lib.getInput("Whats my name:");
int? age = int.tryParse(lib.getInput("Whats my age:") ?? "0");
int rollNumber = (new Random()).nextInt(6)+1;

  lib.Student student = lib.Student(name, age,rollNumber);
  print("Name, age and roll number: ${student.nameAge} ${student.rollNumber}");
}