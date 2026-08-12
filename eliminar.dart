// productos.removeAt(indice);

import 'dart:io';
import 'listar.dart';

void eliminar() {
  print("--------------------------------------------------------------");
  print("Eliminacion de Producto");

  listar();

  print("Ingrese el indice del producto que desea eliminar");
  int? eliminar = int.parse(stdin.readLineSync()!);

  int indice = eliminar;

  productos.removeAt(indice);

  print("--------------------------------------------------------------");
}
