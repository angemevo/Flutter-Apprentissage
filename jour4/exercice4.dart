import 'dart:io';

void main() {
  stdout.write("Entrez une phrase : ");
  String phrase = stdin.readLineSync()!.toLowerCase();

  List<String> mots = phrase.split(' ');
  Map<String, int> compteur = {};

  for (var mot in mots) {
    if (compteur.containsKey(mot)) {
      compteur[mot] = compteur[mot]! + 1;
    } else {
      compteur[mot] = 1;
    }
  }

  print("\nOccurrences des mots :");
  compteur.forEach((mot, count) {
    print("$mot : $count");
  });
}
