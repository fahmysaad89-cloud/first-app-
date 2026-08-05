// Q1:
import 'dart:math';
import 'dart:nativewrappers/_internal/vm/lib/internal_patch.dart';

class BankAccount {
  double _balance = 0;
  void deposit(double amount) {
    _balance += amount;
  }

  void withdraw(double amount) {
    if (_balance - amount >= 0) {
      _balance -= amount;
    } else {
      print('Insufficient balance');
    }
  }

  double get balance => _balance;
}

// Q2:
class Student {
  String _name;
  double _grade;
  Student(this._name, this._grade);

  set grade(double value) {
    if (value >= 0 && value <= 100) {
      _grade = value;
    } else {
      print("Invalid grade");
    }
  }

  String get name => _name;
  double get garade => _grade;
}

// Q3:
class Vehicle {
  String brand;
  double speed;

  Vehicle(this.brand, this.speed);

  void describe() {
    print("Brand: $brand, Speed: $speed");
  }
}

class Car extends Vehicle {
  int doors;

  Car(super.brand, super.speed, this.doors);
  @override
  void describe() {
    super.describe();
    print("Doors$doors");
  }
}

// Q4:
class Animal {
  String name;

  Animal(this.name);
}

class Dog extends Animal {
  String breed;

  Dog(super.name, this.breed);
}

// Q5:
abstract class Shape {
  double area();
}

class Rectangle extends Shape {
  double width;
  double height;
  Rectangle(this.height, this.width);

  @override
  double area() => width * height;
}

class Circle extends Shape {
  double radius;
  Circle(this.radius);

  @override
  double area() => 3.14 * radius * radius;
}

// Q6:
abstract class Employee {
  String name;
  double salary;

  Employee(this.name, this.salary);
  void work();

  void introduce() {
    print("My name is $name");
  }
}

class Developer extends Employee {
  Developer(super.name, super.salary);

  @override
  void work() {
    print("iam coding....");
  }
}
