import 'dart:io';

bool estPairs(int nombre) {
  if (nombre % 2 == 0) {
    return true;
  } else {
    return false;
  }
}

void main() {
  stdout.write("Veuillez entrer un nombre : ");
  int nombre = int.parse(stdin.readLineSync()!);
  if (estPairs(nombre)) {
    print("Le nombre $nombre est pairs");
  } else {
    print("Le nombre $nombre es impairs");
  }
}
