// ignore_for_file: avoid_print, prefer_const_declarations

import 'dart:io';

void main() {
  print('''¿Qué cálculo quieres hacer?
Escribe 'area' para hallar el área de un rectángulo.
Escribe 'perimetro' para hallar el perímetro de un circulo.
Escribe 'gramos' para pasar de kg a gr.''');
  var a = stdin.readLineSync();

  switch (a) {
    case 'area':
      print('valor lado 1');
      var b = stdin.readLineSync();
      print('valor lado 2');
      var c = stdin.readLineSync();
      var lado1 = int.parse('$b');
      var lado2 = int.parse('$c');
      int area = lado1 * lado2;
      print('El área del cuadrilátero es $area');
      break;
    case 'perimetro':
      print('valor del radio del círculo');
      var d = stdin.readLineSync();

      var r = double.parse('$d');
      final double pi = 3.14;
      double per = 2 * pi * r;
      print('El perímetro del círculo es $per');
      break;
    case 'gramos':
      print('introduce los kilogramos');
      var e = stdin.readLineSync();
      var kg = double.parse('$e');
      double gramos = kg * 1000;
      print('$kg kg son $gramos gramos');
      break;
    case 'triangulo':
      print('valor base');

      var m = stdin.readLineSync();

      print('valor altura');

      var n = stdin.readLineSync();

      var base = int.parse('$m');

      var altura = int.parse('$n');

      double areaT = (base * altura) / 2;

      print('El área del triangulo es $areaT');

      break;
    default:
      print('Cálculo no posible');
      var a = stdin.readLineSync();

      do {
        print('Cálculo no posible');
        var a = stdin.readLineSync();
        if (a == 'perimetro') {
          print('valor del radio del círculo');
          var d = stdin.readLineSync();

          var r = double.parse('$d');
          final double pi = 3.14;
          double per = 2 * pi * r;
          print('El perímetro del círculo es $per');
          break;
        }

        if (a == 'area') {
          print('valor lado 1');

          var b = stdin.readLineSync();
          print('valor lado 2');
          var c = stdin.readLineSync();
          var lado1 = int.parse('$b');
          var lado2 = int.parse('$c');
          int area = lado1 * lado2;
          print('El área del cuadrilátero es $area');
          break;
        }

        if (a == 'gramos') {
          print('introduce los kilogramos');
          var e = stdin.readLineSync();
          var kg = double.parse('$e');
          double gramos = kg * 1000;
          print('$kg kg son $gramos gramos');
          break;
        }
      } while (a != 'area' || a != 'perimetro' || a != 'gramos');
  }
}
