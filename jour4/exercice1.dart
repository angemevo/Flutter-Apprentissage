import 'dart:io';

void main() {
  List<String> prenoms = [];

  stdout.write(
    "Combien de prenom voulez-vous enrgistrer dans la liste de prenom : ",
  );
  int nombrePrenom = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < nombrePrenom; i++) {
    stdout.write("Veuillez entrer le prénom numéro ${i + 1}: ");
    String prenom = stdin.readLineSync()!;
    prenoms.add(prenom);
  }
  print("");

  print("\nListe des prénoms enregistrés :");

  for (int i = 0; i < prenoms.length; i++) {
    print("Prénom numéro ${i + 1} : ${prenoms[i]}");
  }

  String prenomLePlusLong = prenoms[0];
  for (String prenom in prenoms) {
    if (prenom.length > prenomLePlusLong.length) {
      prenomLePlusLong = prenom;
    }
  }

  print("");

  print("Le prenom le plus long est : $prenomLePlusLong");
}
