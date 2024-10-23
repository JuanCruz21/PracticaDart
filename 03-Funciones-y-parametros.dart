void main() {
  int a = 10;
  int b = 20;
  print(addNumbers(a, b));
  print(addNumbersNormal(a, b));
  print(mulNumbersNormal(2, 5));
  print(saludar(name: 'Juan', saludo: 'Prueba a '));
  print(saludar2(name: 'Daniel', message: 'Prueba a '));
}

int addNumbers(int a, int b) => a + b;

int addNumbersNormal(int a, int b) {
  return a * b;
}

int mulNumbersNormal(int a, [int b = 0]) {
  return a * b;
}

String saludar({required String name, String saludo = 'Hola,'}) {
  return saludo + name;
}

String saludar2( {required String name, String message = 'Hola,'}) {
  return message + name;
}