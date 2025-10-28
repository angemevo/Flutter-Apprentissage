import 'dart:io';

int sommeDesPairs(int nombre) {
  int somme = 0;
  for (int i = 0; i <= nombre; i++) {
    if (i % 2 == 0) {
      somme += i;
    } else {
      continue;
    }
  }
  return somme;
}

void main() {
  stdout.write("Veuillez entrer un nombre : ");
  int nombre = int.parse(stdin.readLineSync()!);
  int resultat = sommeDesPairs(nombre);
  print("La somme des nombres pairs jusqu'à $nombre est : $resultat");
}
