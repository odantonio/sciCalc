import 'dart:convert';
import 'dart:io';
import 'dart:math';

double sum() {
  var line = inputText("Digite os números para Somar, = para o resultado.");
  double resultado = 0.0;
  // condiçã de parada line é = . Assim como em uma calculadora, = interrompe a entrada de valores e apresenta o resultado.
  while (line != "=") {
    var numero = double.parse(line);
    resultado = resultado + numero;
    line = inputText("Digite os números para Somar, = para o resultado.");
  }
  return resultado;
}

double sub() {
  var line = inputText("Digite os números para Somar, = para o resultado.");
  double resultado = 0.0;
  // condiçã de parada line é = . Assim como em uma calculadora, = interrompe a entrada de valores e apresenta o resultado.
  while (line != "=") {
    var numero = double.parse(line);
    resultado = -numero - resultado;
    line = inputText("Digite os números para Somar, = para o resultado.");
  }
  return resultado;
}

double mult() {
  var line = inputText("Digite os números para Somar, = para o resultado.");
  double resultado = 1.0;
  // condiçã de parada line é = . Assim como em uma calculadora, = interrompe a entrada de valores e apresenta o resultado.
  while (line != "=") {
    var numero = double.parse(line);
    resultado = resultado * numero;
    line =
        inputText("Digite os números para Multiplicação, = para o resultado.");
  }
  return resultado;
}

double div() {
  var num1 = double.parse(inputText("Digite o primeiro numero"));
  var num2 = double.parse(inputText("Digite o segundo numero"));
  double resultado = 0.0;
  if (num2 == 0.0) {
    print("Qualquer número dividido po 0 é indeterminado!");
    exit(0);
  } else {
    resultado = num1 / num2;
    return resultado;
  }
}

double? exp(String operation) {
  double? resultado = 0.0;
  if (operation == "5") {
    var numero = double.parse(inputText("Digite o valor de n."));
    resultado = pow(numero, 2) as double?;
    return resultado;
  } else {
    var numero = double.parse(inputText("Digite o valor de n: "));
    var expo = double.parse(inputText("Digite o valor do expoente: "));
    if (expo == 0) {
      return resultado = 1;
    } else {
      resultado = pow(numero, expo) as double?;
      return resultado;
    }
  }
}

String inputText(String message) {
  print(message);
  var line = stdin.readLineSync(encoding: utf8);
  return line ?? "";
}
