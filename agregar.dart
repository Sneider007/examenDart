import 'dart:io';
import 'listar.dart';

void agregar() {
  print("--------------------------------------------------------------");
  print("Vamos a crear un nuevo producto");
  print("Ingrese el nombre del producto");
  String? nombre = stdin.readLineSync();
  print("Ingrese la cantidad disponible de este");
  int? cantidad = int.parse(stdin.readLineSync()!);
  print("Ingrese el precio del producto");
  String? precio = stdin.readLineSync();

  productos.add({"nombre": nombre, "cantidad": cantidad, "precio": precio});

  print("producto agregado correctamente");
  print("--------------------------------------------------------------");
}
