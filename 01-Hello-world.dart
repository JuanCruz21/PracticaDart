void main() {
  final pokemon = {
    'name': 'Ditto',
    'hp': 100,
    'sprites': {
      1: 'ditto/frontend', 
      2: 'ditto/backend'
      }
  };
  print('Name ${ pokemon['name'] }');
  print('sprites ${ pokemon['sprites'] }');
  print('Back: ${(pokemon['sprites'] as Map<int, String>)[2]}');
  print('Front: ${(pokemon['sprites'] as Map<int, String>)[1]}');
  print(addNumbers(10, 20));
}

int addNumbers (int a, int b) => a + b;