import 'dart:convert';
import 'dart:io';

double sum() {
  print("Digite os números para Somar, = para o resultado.");
  var line = stdin.readLineSync(encoding: utf8);
  double resultado = 0.0;
  // checkando se o valor de line é nulo
  // sendo diferente de nulo, podemos realizar a operação
  if (line != null) {
    // condiçã de parada line é = . Assim como em uma calculadora, = interrompe a entrada de valores e apresenta o resultado.
    while (line != "=") {
      var numero = double.parse(line ?? "0");
      resultado = resultado + numero;
      print("Digite os números para Somar, = para o resultado.");
      line = stdin.readLineSync(encoding: utf8);
    }
    return resultado;
  } else {
    return -1;
  }
}

double sub() {
  print("Digite os números para Somar, = para o resultado.");
  var line = stdin.readLineSync(encoding: utf8);
  double resultado = 0.0;
  // checkando se o valor de line é nulo
  // sendo diferente de nulo, podemos realizar a operação
  if (line != null) {
    // condiçã de parada line é = . Assim como em uma calculadora, = interrompe a entrada de valores e apresenta o resultado.
    while (line != "=") {
      var numero = double.parse(line ?? "0");
      resultado = -numero - resultado;
      print("Digite os números para Somar, = para o resultado.");
      line = stdin.readLineSync(encoding: utf8);
    }
    return resultado;
  } else {
    return -1;
  }
}

double inputText() {
  var line = stdin.readLineSync(encoding: utf8);
  var num = double.parse(line ?? "0");
  return num;
}
