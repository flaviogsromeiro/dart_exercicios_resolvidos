import 'dart:io';

import 'Circle.dart';
import 'Color.dart';
import 'Rectangle.dart';

void main() {
  int? qtdShape;
  String option;
  Color color;

  print('HELLOO, USER!');
  stdout.write('\nEnter the number of shapes: ');

  qtdShape = int.tryParse(stdin.readLineSync()!);

  List<double> listShape = List.filled(qtdShape!, 0);

  for (var i = 0; i < listShape.length; i++) {
    print('\nSHAPE #${i + 1} DATA: ');
    stdout.write('Rectangle or Circle (r/c) ? ');
    option = stdin.readLineSync()!;
    switch (option) {
      case 'r':
        stdout.write('Color (Black/Blue/Red) : ');
        stdin.readLineSync();
        stdout.write('Width: ');
        Rectangle.width = double.tryParse(stdin.readLineSync()!);
        stdout.write('Heigth: ');
        Rectangle.heigth = double.tryParse(stdin.readLineSync()!);

        listShape[i] = Rectangle.area();
        break;
      case 'c':
        stdout.write('Color (Black/Blue/Red) : ');
        stdin.readLineSync();
        stdout.write('Radius: ');
        Circle.radius = double.tryParse(stdin.readLineSync()!);

        listShape[i] = Circle.area();
        break;
      default:
    }
  }

  print('SHAPE AREAS: ');
  listShape.forEach((element) => print(element));
}
