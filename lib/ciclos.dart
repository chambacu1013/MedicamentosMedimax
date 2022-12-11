// ignore_for_file: avoid_print
import 'dart:io';

void main() {
  List<dynamic> datos = [100, 300, 20, 200, 35, 21];
  datos.add(400);

  for (int c = 0; c < datos.length; c++) {
    print(datos[c]);
  }

  datos.remove(300);

  print(datos);

  datos.removeAt(1);

  for (dynamic x in datos) {
    print(x);
  }

  List<dynamic> nombresArt = [];

  List<dynamic> preciosArt = [];

  var articulo, precio;

  var continuar;

  do {
    print("Digite nombre de articulo");

    articulo = stdin.readLineSync();

    nombresArt.add(articulo);

    print("Digite precio de articulo");

    precio = stdin.readLineSync();

    preciosArt.add(precio);

    print("S para agregar un nuevo articulo");

    continuar = stdin.readLineSync();
  } while (continuar == 'S');

  print(nombresArt);

  print(preciosArt);
}
