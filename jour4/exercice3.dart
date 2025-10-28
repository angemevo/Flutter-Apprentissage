import 'dart:io';

void main() {
  Map<String, dynamic> carnetAdresse = {};

  stdout.write("Veuillez indiquer le nombre d'entrée à enregistrer : ");
  int nombreEntre = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < nombreEntre; i++) {
    stdout.write("Veuillez entrer un nom : ");
    String nom = stdin.readLineSync()!;

    stdout.write("Veuillez entrer le numero de telephone : ");
    String numero = stdin.readLineSync()!;

    carnetAdresse["$nom"] = numero;
  }

  stdout.write("Voulez-vous faire une recherche (oui/non): ");
  String choix = stdin.readLineSync()!.trim();

  if (choix.toLowerCase() == "oui") {
    stdout.write("Veillez entrer le nom que vous souhaitez rechercher : ");
    String nomRechercher = stdin.readLineSync()!.trim();

    String foundKey = carnetAdresse.keys.firstWhere(
      (k) => k.toLowerCase() == nomRechercher.toLowerCase(),
      orElse: () => '',
    );

    if (foundKey.isEmpty) {
      print(
        "Désolé le nom que vous recherchez ne figure pas dans le carnet d'addresse !",
      );
    } else {
      print("Numéro : ${carnetAdresse[foundKey]}");
    }
  } else {
    print("Au revoir !");
  }
}
