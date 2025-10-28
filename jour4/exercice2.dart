import 'dart:io';

void main() {
  Set<int> nombres = {};
  stdout.write(
    "Veuillez entrer le nombre de chiffre que vous voulez entrer : ",
  );
  int nombreChiffre = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < nombreChiffre; i++) {
    stdout.write("Veuillez entrer un chiffre : ");
    int nombre = int.parse(stdin.readLineSync()!);
    nombres.add(nombre);
  }

  int nombreUnique = 0;
  print("Le nombre d'element unique est : $nombreUnique");
  print("");

  int sommeNombreUnique = 0;

  for (int nombre in nombres) {
    sommeNombreUnique += nombre;
  }

  print("La somme des nombre est : $sommeNombreUnique");
}
