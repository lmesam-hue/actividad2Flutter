import 'dart:io';
import 'contact.dart';
void buscarContacto(List<Contacto> agenda) {
  print('\n--- Buscar Contacto ---');
  if (agenda.isEmpty) {

    print('No hay contactos registrados.');

    return;

  }

  stdout.write('Ingrese el nombre que desea buscar: ');

  String nombreBuscado = stdin.readLineSync()?.trim() ?? '';

  if (nombreBuscado.isEmpty) {

    print('Debe ingresar un nombre.');

    return;
  }
  bool encontrado = false;

  for (Contacto contacto in agenda) {

    if (contacto.nombre.toLowerCase() ==

        nombreBuscado.toLowerCase()) {

      print('Contacto encontrado:');

      print('Nombre: ${contacto.nombre}');

      print('Teléfono: ${contacto.telefono}');

      encontrado = true;

    }

  }



  if (!encontrado) {

    print('No se encontró el contacto.');

  }

}



void eliminarContacto(List<Contacto> agenda) {

  print('\n--- Eliminar Contacto ---');



  if (agenda.isEmpty) {

    print('No hay contactos para eliminar.');

    return;

  }



  stdout.write('Ingrese el nombre del contacto: ');

  String nombreBuscado = stdin.readLineSync()?.trim() ?? '';



  if (nombreBuscado.isEmpty) {

    print('Debe ingresar un nombre.');

    return;

  }



  int indice = agenda.indexWhere(

    (contacto) =>

        contacto.nombre.toLowerCase() ==

        nombreBuscado.toLowerCase(),

  );



  if (indice == -1) {

    print('No se encontró el contacto.');

    return;

  }



  Contacto eliminado = agenda.removeAt(indice);



  print('Contacto eliminado: ${eliminado.nombre}');

}