// Q1:
import 'dart:math';

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
