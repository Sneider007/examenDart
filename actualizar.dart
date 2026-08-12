import 'dart:io';
import 'listar.dart';

void actualizar() {
  print("--------------------------------------------------------------");
  print("Eliminacion de Producto");

  listar();

  int indice;

  while (true) {
    print("Ingrese el indice del producto que desea actualizar");

    int? update = int.tryParse(stdin.readLineSync() ?? "");

    if (update != null && update >= 0 && update < productos.length) {
      indice = update;
      break;
    }

    print("Indice incorrecto. Intente nuevamente.");
  }

  print("Ingrese el nombre del producto");
  String? nuevoNombre = stdin.readLineSync();
  print("Ingrese la cantidad que hay del producto");
  String? nuevaCantidad = stdin.readLineSync();
  print("Ingrese el precio del producto");
  String? nuevoPrecio = stdin.readLineSync();

  if (nuevoNombre == "") {
    print("El nombre seguira como el anterior");
  } else {
    productos[indice]["nombre"] = nuevoNombre;
  }
  if (nuevaCantidad == "") {
    print("La cantidad seguira como anteriormente estaba");
  } else {
    productos[indice]["cantidad"] = int.parse(nuevaCantidad!);
  }
  if (nuevoPrecio == "") {
    print("El precio seguira como estaba anteriormente");
  } else {
    productos[indice]["precio"] = int.parse(nuevoPrecio!);
  }
  print("--------------------------------------------------------------");
}
