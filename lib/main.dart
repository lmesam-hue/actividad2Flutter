import 'dart:io';
import 'contact.dart';       // Aquí ya viene la clase Contacto y tus funciones
import 'manage_contacts.dart'; // Tus funciones de buscar/eliminar
import 'list_contacts.dart';
import 'add_contact.dart';

void main() {
  List<Contacto> agenda = [];
  bool ejecutando = true;

  while (ejecutando) {
    print('\n--- Agenda de Contactos ---');
    print('1. Agregar Contacto');
    print('2. Ver Contactos');
    print('3. Buscar Contacto');
    print('4. Eliminar Contacto');
    print('5. Salir');
    stdout.write('Elige una opción: ');

    String? opcion = stdin.readLineSync();

    switch (opcion) {
      case '1':
        agregarContacto(agenda);
        break;
          case '2':
        listarContactos(agenda);
        break;
      case '3':
        buscarContacto(agenda);
        break;
      case '4':
        eliminarContacto(agenda);
        break;
      case '5':
        print('Saliendo de la agenda...');
        ejecutando = false;
        break;
      default:
        print('Opción no válida. Intenta de nuevo.');
    }
  }
}
