import 'Shape.dart';

class Rectangle extends Shape {
  static double? width;
  static double? heigth;

  

  @override
  static double area() {
    return width! * heigth!;
  }
}
