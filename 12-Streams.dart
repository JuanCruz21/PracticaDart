void main() {
  // emitNumbers();
  emitnumb().listen((value){
    print('desde main $value');
  });
}

emitNumbers() {
  Stream<int> numbers = Stream<int>.periodic(Duration(seconds: 1), (x) => x);
  numbers.listen((int number) {
    print(number);
  });
}

Stream<int> emitnumb() {
  return Stream.periodic(const Duration(seconds: 1), (x) {
    print('desde stream');
    return x;
  }).take(5);
}
