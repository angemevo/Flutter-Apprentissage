import 'dart:io';

void main() {
  print("Veuillez entrer votre nom : ");
  String? nom = stdin.readLineSync();
  print("Veuillez entrer votre age : ");
  int age = int.parse(stdin.readLineSync()!);
  print("Veuillez entrer un score : ");
  int score = int.parse(stdin.readLineSync()!);

  if (age < 18) {
    print("Accès réfusé à $nom.");
  } else if (age >= 18 && score >= 50) {
    print("Accès complet accordé à $nom.");
  } else {
    print("Accès limité à $nom.");
  }
}
