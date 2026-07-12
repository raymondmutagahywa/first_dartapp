import'dart:io';

int calculate() {
  return 6 * 6;
}

int sum(int num1, int num2) {
  return num1 + num2;
}

int diff(int num1, int num2) {
  return num1 - num2;
}

int mul(int num1, int num2) {
  return num1 * num2;
}

double div(int num1, int num2) {
  return num1 / num2;
}

String? getInput(String prompt){
  stdout.write(prompt);
  return stdin.readLineSync();
}

class Person {
  String? _name;
  int? _age;

  get name => _name;
  get age => _age;
  String get nameAge => "$name $age";

  set name(String? name)=> _name = name;
  set age(int? age)=> _age = age;
  
  Person([String? name="Unknown",int? age=0]){
    //print("Person:Default:Constructor");
    this.name = name;
    this.age = age;
   }
}

class Student extends Person{
  int? _rollNumber;
  
  set rollNumber(int? rollNumber)=> _rollNumber = rollNumber;
  get rollNumber => _rollNumber;

  // Constructor
  Student(String? name, int? age, [int? rollNumber=9]) : super(name,age){
    //print("Student:Parameterized:Constructor");
    this.rollNumber = rollNumber;
  }
}