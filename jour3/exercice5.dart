import 'dart:io';

double addition(double a, double b) {
  return a + b;
}

double soustraction(double a, double b) {
  return a - b;
}

double multiplication(double a, double b) {
  return a * b;
}

double division(double a, double b) {
  return a / b;
}

double modulo(double a, double b) {
  return a % b;
}

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
      break;
    } else if (choix < 1 || choix > 6) {
      print("Option invalide. Veuillez réessayer.\n");
      continue;
    }

    stdout.write("Entrez le premier nombre : ");
    double nombre1 = double.parse(stdin.readLineSync()!);
    stdout.write("Entrez le deuxième nombre : ");
    double nombre2 = double.parse(stdin.readLineSync()!);
    double resultat = 0;

    switch (choix) {
      case 1:
        resultat = addition(nombre1, nombre2);
        print("Résultat finale : ${resultat.toStringAsFixed(2)}");
        break;
      case 2:
        resultat = soustraction(nombre1, nombre2);
        print("Résultat finale : ${resultat.toStringAsFixed(2)}");
        break;
      case 3:
        resultat = multiplication(nombre1, nombre2);
        print("Résultat finale : ${resultat.toStringAsFixed(2)}");
        break;
      case 4:
        if (nombre2 == 0) {
          print("Erreur : Division par zéro impossible.");
        } else {
          resultat = division(nombre1, nombre2);
          print("Résultat finale : ${resultat.toStringAsFixed(2)}");
        }
        break;
      case 5:
        if (nombre2 == 0) {
          print("Erreur : Division par zéro impossible.");
        } else {
          resultat = modulo(nombre1, nombre2);
          print("Résultat finale : ${resultat.toStringAsFixed(2)}");
        }
        break;
    }

    print(""); // espacement pour lisibilité
  }
}
