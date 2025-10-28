import 'dart:io';

void main() {
  stdout.write("Veuillez entrer un nombre : ");
  int nombre = int.parse(stdin.readLineSync()!);
  int sommePair = 0;
  int sommeImpair = 0;
  for (int i = 1; i <= nombre; i++) {
    if (i % 2 == 0) {
      sommePair += i;
      print("$i est paire");
    } else {
      sommeImpair += i;
      print("$i est impaire");
    }
  }
  print("La somme des nombres pairs est : $sommePair");
  print("La somme des nombres impairs est : $sommeImpair");
}
