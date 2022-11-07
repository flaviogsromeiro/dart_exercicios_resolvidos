import 'Shape.dart';

class Circle extends Shape {
  static double? radius;

  
  @override
  static double area() {
    return 3.14 * (radius! * radius!);
  }
}
