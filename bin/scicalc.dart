import 'dart:convert';
import 'dart:io';

import 'package:scicalc/scicalc.dart' as scicalc;

void main(List<String> arguments) {
  print('    ==================== Calculadora ====================');
  print("""
    Entre com a operação a ser realizada.
    1 -> Adição         | 5 -> n^2        | 9 -> log(n)
    2 -> Subtração      | 6 -> n^x        | 
    3 -> Multiplicação  | 7 -> sqrt(n)    |
    4 -> Divisão        | 8 -> x sqrt(n)  |

    to EXIT press 0
    =====================================================
    """);

  var line = stdin.readLineSync(encoding: utf8);
  var operation = line ?? "Operação não suportada";
  var resultado = 0.0;
  switch (operation) {
    case "1":
      resultado = scicalc.sum();
      print(resultado);
    case "2":
      resultado = scicalc.sub();
      print(resultado);
    /* case "3":
      time();
    case "4":
      division();
    case "5":
      exp("2");
    case "6":
      exp(n);
    case "7":
      sqrt();
    case "8":
      sqrt(n);
    case "9":
      log(); */
    default:
      print("A operação selecionada não é uma operação válida! Saindo... ");
      exit(0);
  }
}
