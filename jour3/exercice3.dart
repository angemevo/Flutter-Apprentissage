import 'dart:io';

int factoriel(int nombre) {
  if (nombre == 0 || nombre == 1) {
    return 1;
  } else {
    return nombre * factoriel((nombre - 1));
  }
}

void main() {
  stdout.write("Veuillez entrer un nombre : ");
  int nombre = int.parse(stdin.readLineSync()!);
  int resultat = factoriel(nombre);
  print("Le factoriel de $nombre est $resultat");
}
