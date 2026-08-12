import 'dart:io';

import 'agregar.dart';
import 'listar.dart';
import 'eliminar.dart';
import 'actualizar.dart';

void main() {
  int opcIngresada = 0;

  while (opcIngresada != 5) {
    print("Gestion de Tienda del gordo");
    print("Ingrese la opcion que desea");
    print("1: Agregar Producto");
    print("2: Listar Productos");
    print("3: Actualizar Producto");
    print("4: Eliminar Producto");
    print("Salir (cualquier numero)");
    String entrada = stdin.readLineSync()!;

    int? opcIngresada = int.tryParse(entrada);

    print("--------------------------------------------------------------");

    if (opcIngresada == null) {
      print("Incorrecto: debe ingresar un número del 1 al 5");
      continue;
    }

    switch (opcIngresada) {
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
      case 5:
        print("Saliendo del programa");
        return;
      default:
        print("Incorrecto: ingrese una opción entre 1 y 5");
        break;
    }
  }

  print("--------------------------------------------------------------");
}
