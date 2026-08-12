List<Map<String, dynamic>> productos = [];

listar() {
  print("--------------------------------------------------------------");

  int indice = 0;

  for (var producto in productos) {
    print("$indice. ${producto["nombre"]}");
    print("   Cantidad disponible: ${producto["cantidad"]}");
    print("   Precio: ${producto["precio"]}");

    indice++;
  }

  print("--------------------------------------------------------------");
}
