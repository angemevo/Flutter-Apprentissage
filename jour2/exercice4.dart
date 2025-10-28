import 'dart:io';

void main() {
  print("========== Bienvenue sur la calculatrice ==========\n");
  print("1. Addition (+)");
  print("2. Soustraction (-)");
  print("3. Multiplication (*)");
  print("4. Division (/)");
  print("5. Modulo (%)");
  print("6. Quitter\n");

  while (true) {
    stdout.write("Veuillez choisir une option (1-6) : ");
    int choix = int.parse(stdin.readLineSync()!);

    if (choix == 6) {
      print("\nMerci d'avoir utilisé la calculatrice. Au revoir !");
      break; // 🔁 on sort proprement de la boucle
    } else if (choix < 1 || choix > 6) {
      print("Option invalide. Veuillez réessayer.\n");
      continue; // 🔁 on redemande un choix valide
    }

    stdout.write("Entrez le premier nombre : ");
    double nombre1 = double.parse(stdin.readLineSync()!);
    stdout.write("Entrez le deuxième nombre : ");
    double nombre2 = double.parse(stdin.readLineSync()!);
    double resultat = 0;

    switch (choix) {
      case 1:
        resultat = nombre1 + nombre2;
        print("Résultat de l’addition : ${resultat.toStringAsFixed(2)}");
        break;
      case 2:
        resultat = nombre1 - nombre2;
        print("Résultat de la soustraction : ${resultat.toStringAsFixed(2)}");
        break;
      case 3:
        resultat = nombre1 * nombre2;
        print("Résultat de la multiplication : ${resultat.toStringAsFixed(2)}");
        break;
      case 4:
        if (nombre2 == 0) {
          print("Erreur : Division par zéro impossible.");
        } else {
          resultat = nombre1 / nombre2;
          print("Résultat de la division : ${resultat.toStringAsFixed(2)}");
        }
        break;
      case 5:
        if (nombre2 == 0) {
          print("Erreur : Division par zéro impossible.");
        } else {
          resultat = nombre1 % nombre2;
          print("Résultat du modulo : ${resultat.toStringAsFixed(2)}");
        }
        break;
    }

    print(""); // espacement pour lisibilité
  }
}
