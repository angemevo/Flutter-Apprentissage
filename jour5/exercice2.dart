import 'dart:io';

void afficherProfile({String nom = "Invité", int age = 18}) {
  print("Bonjour $nom, vous avez $age ans.");
}

void main() {
  stdout.write(
    "Veuillez entrer votre nom (ou appuyez sur Entrée pour 'Invité') : ",
  );
  String? nom = stdin.readLineSync();

  if (nom == null || nom.isEmpty) {
    nom = "Invité";
  }

  stdout.write("Veuillez entrer votre âge (ou appuyez sur Entrée pour 18) : ");
  int? age = int.tryParse(stdin.readLineSync()!);

  if (age == null) {
    age = 18;
  }

  afficherProfile(nom: nom, age: age);
}
