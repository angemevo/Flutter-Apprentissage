import 'dart:io';

int maxDeTrois(int a, int b, int c) {
  if (a > b && a > c) {
    return a;
  } else if (b > a && b > c) {
    return b;
  } else if (c > a && c > b) {
    return c;
  } else {
    throw Exception("Ils sont tous egaux");
  }
}

void main() {
  stdout.write("Veuillez entrer un premier nombre : ");
  int nombre1 = int.parse(stdin.readLineSync()!);
  stdout.write("Veuillez entrer un premier nombre : ");
  int nombre2 = int.parse(stdin.readLineSync()!);
  stdout.write("Veuillez entrer un premier nombre : ");
  int nombre3 = int.parse(stdin.readLineSync()!);

  int plusGrand = maxDeTrois(nombre1, nombre2, nombre3);

  print("le plus grand des nombres est $plusGrand");
}
