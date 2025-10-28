import 'dart:io';

void main() {
  stdout.write("Veuillez entrer in nombre : ");
  int nombre = int.parse(stdin.readLineSync()!);
  int somme = 0;
  for (int i = 1; i <= nombre; i++) {
    somme += i;
    print("La somme est : $somme");
  }
}
