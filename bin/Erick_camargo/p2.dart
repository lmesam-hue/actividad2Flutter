import 'dart:io';

void main() {
 
  stdout.write('Ingrese la velocidad canstante del carro en m/s ');
  double velocidad = double.parse(stdin.readLineSync()!);

  stdout.write('Ingrese el tiempo transcurrido en segundos ');
  double tiempo = double.parse(stdin.readLineSync()!);

  double distancia = velocidad * tiempo;

  
  print(' resultado '); 
  print(' la distancia recorrida es: ${distancia.toStringAsFixed(2)} metros');
}
