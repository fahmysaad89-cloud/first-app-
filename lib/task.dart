// Q1:
import 'dart:math';
import 'dart:nativewrappers/_internal/vm/lib/internal_patch.dart';

import 'package:flutter/material.dart';

// Q1:
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

// Q7:
abstract class Flyable {
  void fly();
}

abstract class Swimmable {
  void swim();
}

class Duck implements Swimmable, Flyable {
  @override
  void fly() {
    print("Duck is flying");
  }

  @override
  void swim() {
    print("Duck is swimming");
  }
}

// Q8:
abstract class Drawable {
  void draw();
  String getColor();
}

class Square implements Drawable {
  @override
  void draw() {
    print("Drawing Square");
  }

  @override
  String getColor() {
    return "red";
  }
}

class Triangle implements Drawable {
  @override
  void draw() {
    print("Drawing Triangle");
  }

  @override
  String getColor() {
    return "black";
  }
}

// Q9:
class Counter {
  int _count = 0;
  // Counter(this._count);
  void increment() {
    _count++;
  }

  void decrement() {
    if (_count > 0) {
      _count--;
    }
  }

  void reset() {
    _count = 0;
  }

  int get count => _count;
}

void main() {
  Counter c = Counter();
  c.increment();
  c.increment();
  c.increment();
  print(c.count); //3

  c.decrement();
  print(c.count); //2

  c.reset();
  print(c.count); //0
}
