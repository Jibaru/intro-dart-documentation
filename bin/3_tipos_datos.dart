void main(List<String> args) {
  // Numbers
  num numero = 9;
  assert(numero.runtimeType == int);
  assert(numero == 9);

  var entero = 1;
  assert(entero.runtimeType == int);

  double real = 18;
  assert(real == 18.0);

  int parseEntero = int.parse('98');
  assert(parseEntero == 98);

  String parseString = 76.2.toString();
  assert(parseString == '76.2');

  int pruebaBit = 3 << 1; // 0011 << 1 == 0110
  assert(pruebaBit == 6);

  // Strings
  String nombre = 'Ignacio';
  String apellido = "Rueda";
  String frase = "Mi nombre es:\t\t Ignacio";
  String frase2 = "Mi nombre es: ${nombre + apellido}";

  String concatena = 'Ignacio'' ''Rueda';
  assert(concatena == 'Ignacio Rueda');

  String concatena2 = 'Ignacio'+' '+'Rueda';
  assert(concatena2 == 'Ignacio Rueda');

  String multilinea = '''
    Mensaje 
    multilinea
  ''';
  print(multilinea);
  print(frase2);

  String raw = r'Raw string $concatena';
  assert(raw == r'Raw string $concatena');

  const sa = 'nombre';
  const sb = 98;
  const sc = true;
  const sd = const [1, 2, 3];
  const String stringConstante = '$sa $sb $sc'; // Correcto
  // Error: const String stringNoConstante = '${sd[0]}';

  // Booleanos
  var bool1 = true;
  bool bool2 = false;
  assert(bool1 != bool2);

  // Listas
  var lista1 = [1, 2, 3];
  List<int> lista2 = [4, 5, 6];
  lista1[0] = 10;
  assert(lista1[0] == 10);
  assert(lista1.length == 3);

  const listaConstante = const [1, 2, 3];

  var listaSpread = [0, ...lista1];
  assert(listaSpread.length == 4);
  print(listaSpread);

  List<int> listaNula;
  var listaSpread2 = [0, 1, ...?listaNula];
  assert(listaSpread2.length == 2);

  var listaIf = ['hola', 'mundo', if(9 > 7) 'Ignacio'];
  assert(listaIf.length == 3);

  var listaFor = [for(var i in listaSpread) '#$i'];
  assert(listaFor[0] == '#0');

  // Sets
  var set1 = <String>{};
  Set<String> set2 = {'el1', 'el2', 'el3'};
  set2.add('el4');
  set2.addAll(['el5', 'el6']);
  print(set2);

  const setConstante = const {'el1', 'el2'};

  // Maps
  var map1 = {};
  Map<int, String> map2 = {
    1: 'el1',
    2: 'el2',
    3: 'el3'
  };
  map2[3] = 'elmod';
  assert(map2.length == 3);
  print(map2);

  final mapConstante = const {1: 'hidrogeno', 2: 'nitrogeno'};

  // Runas
  Runes runa = Runes('\u2665 \u{1f605}');
  String runaString = String.fromCharCodes(runa);
  print(runaString);

  String stringConCorazon = '\u2665';
  print(stringConCorazon.runes.length); // Solo para un elemento
  print(runaString.runes.length);
  // Con paquete characters
  // print(runaString.characters.length); // 2

  // Symbols
  var simbolo = #simbolo;
  print(simbolo);

}