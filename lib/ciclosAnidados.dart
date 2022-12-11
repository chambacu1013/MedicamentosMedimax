// ignore_for_file: avoid_print

void main() {
  List<dynamic> elementos = [100, 200, 400, 21, 230, 48, 51];

  var mayor = elementos[0];
  var menor = elementos[0];

  for (var i = 0; i < elementos.length; i++) {
    var num = elementos[i];

    if (num > mayor) {
      mayor = num;
    }
    if (num < menor) {
      menor = num;
    }

    if (num % 2 == 0) {
      print("El numero $num es par");
    } else {
      print("El número $num es impar");
    }
  }

  print("El número mayor es $mayor");
  print("El número menor es $menor");

  List<dynamic> elementosDesc = [];
  for (var i = 0; i < elementos.length; i++) {
    elementosDesc.add(elementos[i]);
  }
  //21,48,51,100,200,230,400;
  for (var i = 0; i < elementos.length; i++) {
    var numi = elementos[i];
    for (var j = i + 1; j < elementos.length; j++) {
      var numj = elementos[j];
      if (numj < numi) {
        elementos[i] = numj;
        elementos[j] = numi;
        numi = numj;
      }
    }
  }

  for (var i = 0; i < elementosDesc.length; i++) {
    var numi = elementosDesc[i];
    for (var j = i + 1; j < elementosDesc.length; j++) {
      var numj = elementosDesc[j];
      if (numj > numi) {
        elementosDesc[i] = numj;
        elementosDesc[j] = numi;
        numi = numj;
      }
    }
  }

  print(elementos);
  print(elementosDesc);
}
