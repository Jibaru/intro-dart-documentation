import 'package:meta/meta.dart';

List<int> gasesNobles = [1,2,3,4];

bool esNoble(int numeroAtomico) {
	return gasesNobles.contains(numeroAtomico);
}

esNobleSinTipado(numeroAtomico) {
	return gasesNobles.contains(numeroAtomico);
}

esNobleSinTipadoAc(numeroAtomico) => gasesNobles.contains(numeroAtomico);

void mensaje(int edad, [String msg]) {
  if(msg != null) {
    print(msg + ' Edad: $edad');
  } else {
    print('Edad: $edad');
  }
}

void mensajeNomb({@required int edad, String msg}) {
  if(msg != null) {
    print(msg + ' Edad: $edad');
  } else {
    print('Edad: $edad');
  }
}

void imprimirElemento(int el) {
  print(el);
}

Function crearAgregador(int agregarPor) {
  return (int i) => agregarPor + i;
}

funcionVacia(){}

void main(List<String> args) {

  print(esNoble(7));
  print(esNobleSinTipado(3));
  print(esNobleSinTipadoAc(2));
  mensaje(14, 'hola Mundo!');
  mensaje(15);
  mensajeNomb(msg: 'Mensaje', edad: 45);
  mensajeNomb(edad: 45);

  var lista = [1,2,3,4,5];
  lista.forEach(imprimirElemento);
  lista.forEach((el) => print(el));

  void funcionAnidada() {
    var msg = 'Mensaje';
    print(msg);
    print(lista);
    print(gasesNobles);
  }

  funcionAnidada();

  var agregar2 = crearAgregador(2);
  print(agregar2(5));
  print(funcionVacia());
}