import 'package:first/task.dart';

void main() {
  // Q9:
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
