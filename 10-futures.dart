void main() {
  print('Inicio el programa');
  httpGet(url: 'https://juanc.ruzdev.online').then((value) {
    print(value);
  }).catchError((err) {
    print('Error: $err');
  });
  
  print('Finalizo el programa');
}

Future<String> httpGet({required String url}) async {
  return Future.delayed(Duration(seconds: 1), () {
    return 'Hola Mundo - 1 segundo';
  });
}

