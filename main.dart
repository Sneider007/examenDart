import 'dart:io';

import 'agregar.dart';
import 'listar.dart';
import 'eliminar.dart';
import 'actualizar.dart';

void main() {
  int opc = 0;

  while (opc != 5) {
    print("Gestion de Tienda del gordo");
    print("Ingrese la opcion que desea");
    print("1: Agregar Producto");
    print("2: Listar Productos");
    print("3: Actualizar Producto");
    print("4: Eliminar Producto");
    print("Salir (cualquier numero)");
    int? opc = int.parse(stdin.readLineSync()!);

    print("--------------------------------------------------------------");

    switch (opc) {
      case 1:
        agregar();
        break;
      case 2:
        listar();
        break;
      case 3:
        actualizar();
        break;
      case 4:
        eliminar();
        break;
      default:
        print("Saliendo del programa");
        return;
    }
  }

  print("--------------------------------------------------------------");
}
