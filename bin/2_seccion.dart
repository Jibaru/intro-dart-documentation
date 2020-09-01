
void main(List<String> args) {

  var nombre = 'Ignacio';
  assert(nombre.runtimeType == String);

  dynamic variableDinamica = 'Ignacio 2';
  assert(variableDinamica.runtimeType == String);

  variableDinamica = 12;
  assert(variableDinamica.runtimeType == int);

  Object variableObjeto;
  assert(variableObjeto.runtimeType == Null);

  variableObjeto = 'Hola mundo';
  assert(variableObjeto.runtimeType == String);

  var variableSinValor;
  assert(variableSinValor == null);

  final variableFinal = 1000;
  // Error: variableFinal = 10;
  assert(variableFinal != null);

  const double atm = 192.0;
  // Error: atm = 182.0;

  var var1 = const [];
  var1 = [1, 2, 3];

  final var2 = const [];
  // Error: var2 = [1,2,3];

  // Comentarios de una linea

  /*
    Comentario
    multilinea
  */

  /// Esta constante final [msj] representa
  /// algún mensaje a la comunidad de dart
  final String msj = "Mensaje a la comunidad dart";

}