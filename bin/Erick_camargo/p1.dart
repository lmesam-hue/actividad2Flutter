import 'dart:io';

//Clase persona
class Person {
  String name;
  int age;

  //El constructor de la clase
  Person({required this.name, required this.age});

  // Método para evaluar si es mayor de edad
  bool isAnAdult() {
    return age >= 18;
  }

  // Método para mostrar los resultados
  void isAdult() {
  
    if (isAnAdult()) {
      print("$name es mayor de edad");
    } else {
      print("$name es menor de edad");
    }
  }
}

void main() {
  //Entradas
  stdout.write("Ingrese su nombre: ");
  String? namein = stdin.readLineSync() ?? "Desconocido";

  if (namein.trim().isEmpty) {
    print("Nombre no válido.");
    return;
  }

  stdout.write("Ingrese su edad: ");
  String? agein = stdin.readLineSync() ?? "0";

  if (agein.trim().isEmpty) {
    print("Edad no válida.");
    return;
  }

  int ageInt = int.tryParse(agein) ?? 0;

  Person person = Person(name: namein, age: ageInt);

  // Ejecutamos los comportamientos del objeto
  person.isAdult();

}