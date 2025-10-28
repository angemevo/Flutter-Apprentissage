import 'dart:io';

void main() {
  print("Entrez votre prénom : ");
  String? prenom = stdin.readLineSync();
  print("Entrez votre age : ");
  int age = int.parse(stdin.readLineSync()!);
  bool estMajeur = age >= 18;

  int score = age * 2 + 10;
  print(
    "Salut $prenom, ton score est de $score. Êtes vous majeur ? $estMajeur",
  );
}
