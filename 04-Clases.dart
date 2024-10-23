void main() {
  // final Hero wolverine = Hero('Logan','Regeneracion');
  final Hero wolverine = Hero(name:'Logan',poder:'Regeneracion');
  print(wolverine.toString());
  print(wolverine.name);
  print(wolverine.poder);
}

class Hero{
  String name;
  String poder;

  Hero({
    required this.name,
    this.poder = 'sin poder'
    });

  // Hero(this.name,this.poder);

  // Hero( String pname, String ppoder);
  // : name = pname,
  //   poder = ppoder;

  @override
  String toString(){
    return '$name - $poder';
  }
}