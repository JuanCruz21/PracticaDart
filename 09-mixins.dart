void main() {
  final flipper = Delfin();
  flipper.nadar();

  final aquaman = PezVolador();
  aquaman.volar();
  aquaman.nadar();
}

abstract class Animal {}

abstract class Mamifero extends Animal {}

abstract class Ave extends Animal {}

abstract class Pez extends Animal {}

mixin Volador {
  void volar() => print('Se Volar');
}

mixin Nadador {
  void nadar() => print('Se nadar');
}

mixin Caminante {
  void caminar() => print('Se caminar');
}

class Delfin extends Mamifero with Nadador {}

class Murcielago extends Mamifero with Volador, Caminante {}

class Gato extends Mamifero with Caminante {}

class Paloma extends Ave with Volador, Caminante {}

class Pato extends Ave with Volador, Caminante, Nadador {}

class Tiburon extends Pez with Nadador {}

class PezVolador extends Pez with Volador, Nadador {}
