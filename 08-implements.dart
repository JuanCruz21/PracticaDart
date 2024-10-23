void main() {
  final windPland = WindPlant(initialEnergy: 100);
  final nuclearPlant = NuclearPlant(energyLeft: 100);
  for (var i = 0; i < 10; i++) {
    windPland.consumeEnergy(10);
    print(windPland.energyLeft);
    nuclearPlant.consumeEnergy(10);
    print('Ejemplo nuclear: ${nuclearPlant.energyLeft}');
  }
}

enum PlantType { nuclear, wind, water }

abstract class EnergyPlant {
  double energyLeft;
  final PlantType type;
  EnergyPlant({required this.energyLeft, required this.type});

  double consumeEnergy(double amount) {
    return energyLeft -= amount;
  }
}

class WindPlant extends EnergyPlant {
  WindPlant({required double initialEnergy})
      : super(energyLeft: initialEnergy, type: PlantType.wind);
  @override
  double consumeEnergy(double amount) {
    return energyLeft += amount;
  }
}

class NuclearPlant implements EnergyPlant {
  @override
  double energyLeft;
  @override
  final PlantType type = PlantType.nuclear;
  @override
  NuclearPlant({required this.energyLeft});

  @override
  double consumeEnergy(double amount) {
    return energyLeft -= (amount*0.5);
  }
}
