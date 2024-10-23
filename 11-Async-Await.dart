void main() async {
  print('Estamos a punto de pedir datos');
  try {
    String data = await httpGetAwait(url: 'https://api.nasa.com/aliens');
    print('exito: $data');
  } on Exception {
    print('Tenemos una Exception');
  } catch (err) {
    print('Tenemos un error: $err');
  } finally {
    print('Fin del try y catch');
  }
  print('Ultima linea');
}

Future<String> httpGetAwait({required String url}) async {
  await Future.delayed(Duration(seconds: 3));
  // throw 'Error en la peticion';
  throw Exception('No hay parametros en la URL');
  // return 'Hola Mundo - 2 segundos despues';
}
