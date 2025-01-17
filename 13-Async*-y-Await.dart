void main() {
  emitNumber().listen((value) {
    print('Stream value: $value');
  });
}

Stream emitNumber() async* {
  final valuesToEmit = [1, 2, 3, 4, 5];
  for (int i in valuesToEmit) {
    await Future.delayed(Duration(seconds: 1));
    yield i;
  }
}
