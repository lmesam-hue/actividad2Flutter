import 'dart:io';

class Empleado {
  String nombre;
  double salarioHora;
  int horasTrabajadas;
  double salario;

  Empleado(this.nombre, this.salarioHora, this.horasTrabajadas, this.salario);

  void dataInput() {
    stdout.write("Ingrese el nombre:");
    this.nombre = stdin.readLineSync()!;
    stdout.write("Ingrese el salario por hora:");
    this.salarioHora = double.parse(stdin.readLineSync()!);
    stdout.write("Ingrese las horas trabajadas:");
    this.horasTrabajadas = int.parse(stdin.readLineSync()!);
  }

  double calcularSalario() {
    salario = salarioHora * horasTrabajadas;
    return salario;
  }

  String mostrarDatos() {
    return 'Datos del empleado\n Nombre: $nombre\n Salario por hora: $salarioHora\n Horas trabajadas: $horasTrabajadas\n Salario: $salario';
  }
}

void main() {
  Empleado e1 = Empleado('', 0, 0, 0);
  e1.dataInput();
  e1.calcularSalario();
  print(e1.mostrarDatos());
}
