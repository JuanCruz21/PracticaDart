void main() {
  final wolverine = Hero(name: 'Logan', poder: 'Regeneracion' , isAlive: false);
  print(wolverine.toString());
  final Map<String, dynamic> ironManJson = {
    'name': 'Tony Stark',
    'poder': 'Dinero',
    'isAlive': true
  };
  final Map<String, dynamic> spidermanJson = {
    'name': 'Peter Parker',
    'poder': 'Telarañas',
    'isAlive': false
  };
  final SpidermanJson = Hero.fromJson(spidermanJson);
  final ironMan = Hero.fromJson(ironManJson);
  print(SpidermanJson);
  print(ironMan);
}

class Hero {
  String name;
  String poder;
  bool isAlive;

  Hero({
    required this.name, 
    required this.poder,
    required this.isAlive
  });
  Hero.fromJson(Map<String, dynamic> json)
    : name = json['name'] ?? 'No name found',
       poder = json['poder'] ?? 'No poder found',
       isAlive = json['isAlive'] ?? 'No isAlive found';

  @override
  String toString() {
    return '$name - $poder isAlive: ${ isAlive ? 'YES!': 'NO!'}';
  }
}
