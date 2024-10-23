void main() {
  final windPland = WindPlant(initialEnergy: 100);

  for (var i = 0; i < 10; i++) {
    windPland.consumeEnergy(10);
    print(windPland.energyLeft);
  }
}

enum PlantType { nuclear, wind, water }

abstract class EnergyPlant {
  double energyLeft;
  PlantType type;
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
