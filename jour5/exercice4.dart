import 'dart:io';

void operation(int a, int b, Function somme) {
  int resultat = somme(a, b);
  print("Le résultat de l'opération est : $resultat");
}

void main() {
  stdout.write("Veuillez entrer un premier nombre : ");
  int nombre1 = int.parse(stdin.readLineSync()!);
  stdout.write("Veuillez entrer un deuxième nombre : ");
  int nombre2 = int.parse(stdin.readLineSync()!);

  operation(nombre1, nombre2, (x, y) => x + y);
}
