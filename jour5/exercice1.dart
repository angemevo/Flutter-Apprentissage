import 'dart:io';

int somme(int a, int b) => a + b;

void main() {
  stdout.write("Veuiller entrer le premier nombre : ");
  int nombre1 = int.parse(stdin.readLineSync()!);

  stdout.write("Veuiller entrer le deuxième nombre : ");
  int nombre2 = int.parse(stdin.readLineSync()!);
  print("La somme de $nombre1 et de $nombre2 est : ${somme(nombre1, nombre2)}");
}
