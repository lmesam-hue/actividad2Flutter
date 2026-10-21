import 'dart:io';

import 'contact.dart';

void agregarContacto(List<Contacto> agenda) {
  print('\n--- Agregar Contacto ---');

  stdout.write('Nombre: ');
  final nombre = stdin.readLineSync()?.trim() ?? '';

  if (nombre.isEmpty) {
    print('El nombre no puede estar vacío.');
    return;
  }

  stdout.write('Teléfono: ');
  final telefono = stdin.readLineSync()?.trim() ?? '';

  if (telefono.isEmpty) {
    print('El teléfono no puede estar vacío.');
    return;
  }

  agenda.add(Contacto(nombre, telefono));
  print('Contacto agregado correctamente.');
}
