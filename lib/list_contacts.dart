import 'contact.dart';

void listarContactos(List<Contacto> agenda) {
  print('\n--- Lista de Contactos ---');

  if (agenda.isEmpty) {
    print('No hay contactos registrados.');
    return;
  }

  for (int i = 0; i < agenda.length; i++) {
    print(
      '${i + 1}. Nombre: ${agenda[i].nombre} '
      '| Teléfono: ${agenda[i].telefono}',
    );
  }
}