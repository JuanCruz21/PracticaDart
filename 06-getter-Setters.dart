void main() {
  final Area = new Cuadrado(lado: -10);
  // Area.lados = 70;
  print('Cada lado es de: ${Area.lado}');
  print('El area es de: ${Area.area}');
}

class Cuadrado {
  double lado;
  // double _lado; Privatizar una funcion

  Cuadrado({required double lado}) : 
  assert(lado >= 0, 'El lado debe ser mayor que cero'),
  lado = lado;

  double get area => lado * lado;

  set lados(double valor) {
    print('Nuevo valor: $valor');
    if (valor <= 0) throw 'El lado debe ser mayor que cero';
    lado = valor;
  }
}
