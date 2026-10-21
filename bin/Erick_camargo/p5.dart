import 'dart:io';

class Horno {
  int userInput1;
  double userInput2;
  double celsius;
  double farenheit;
  Horno(this.celsius, this.farenheit, this.userInput1, this.userInput2);

  void dataInput() {
    int contador = 0;
    do {
      stdout.write(
        "Seleccione digitando un numero: \n 1. Convertir °C a Farenheit. \n 2. Convertir Farenheit a °C.\n ",
      );
      int? opc = int.tryParse(stdin.readLineSync() ?? '');
      if (opc == null || (opc != 1 && opc != 2)) {
        print("Opción no válida. Por favor digite 1 o 2.\n");
        continue;
      }
      userInput1 = opc;

      stdout.write("Digite la temperatura:  ");
      double? temp = double.tryParse(stdin.readLineSync() ?? '');
      if (temp == null) {
        print("Temperatura inválida. Debe ser un número.\n");
        continue;
      }
      userInput2 = temp;
      contador = 1;
     } while (contador == 0);
  }

  double calculate() {
    if (userInput1 == 1) {
      celsius = userInput2;
      farenheit = (celsius * 1.8) + 32;
      return farenheit;
    } else if (userInput1 == 2) {
      farenheit = userInput2;
      celsius = (farenheit - 32) * 5 / 9;
      return celsius;
    } else {
      throw ArgumentError('Opcion erronea: $userInput1');
    }
  }

  String dataSelect() {
    double resultado = calculate();
    if (userInput1 == 1) {
      return "La conversion de ${userInput2}(°C) a °F es: ${resultado.toStringAsFixed(2)}";
    } else if (userInput1 == 2) {
      return "La conversion de ${userInput2}(°F) a °C es: ${resultado.toStringAsFixed(2)}";
    } else {
      throw ArgumentError("Error en dataSelect");
    }
  }

  void dataShow() {
    print(dataSelect());
  }
}

void main() {
  Horno h1 = Horno(0, 0, 0, 0);
  h1.dataInput();
  h1.dataShow();
}
