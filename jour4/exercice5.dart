import 'dart:io';

double moyenne(List<double> notes) {
  double somme = notes.fold(0, (a, b) => a + b);
  return somme / notes.length;
}

void main() {
  List<Map<String, dynamic>> etudiants = [];

  stdout.write("Veuillez indiquer le nombre d'étudiant à enregistrer : ");
  int nombreEtudiant = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < nombreEtudiant; i++) {
    stdout.write("Veuillez entrer le nom de l'étudiant N°${i + 1}: ");
    String nom = stdin.readLineSync()!;

    stdout.write(
      "Veuillez entrer le nombre de notes à enregistrer pour l'étudiant ${nom}: ",
    );
    int nombreNote = int.parse(stdin.readLineSync()!);

    List<double> notes = [];
    for (int j = 0; j < nombreNote; j++) {
      stdout.write("Veuillez entrer la note ${j + 1} : ");
      double note = double.parse(stdin.readLineSync()!);
      notes.add(note);
    }

    etudiants.add({"nom": nom, "notes": notes});
  }

  print("\nMoyenne des étudiants :");
  for (var e in etudiants) {
    double moy = moyenne(List<double>.from(e["notes"]));
    print("${e["nom"]} -> Moyenne: ${moy.toStringAsFixed(2)}");
  }

  // Trouver l'étudiant avec la meilleure moyenne et la pire moyenne
  var meilleurEtudiant = etudiants.reduce(
    (a, b) =>
        moyenne(List<double>.from(a["notes"])) >
            moyenne(List<double>.from(b["notes"]))
        ? a
        : b,
  );

  var pireEtudiant = etudiants.reduce(
    (a, b) =>
        moyenne(List<double>.from(a["notes"])) <
            moyenne(List<double>.from(b["notes"]))
        ? a
        : b,
  );

  print(
    "Le meilleur étudiant est : ${meilleurEtudiant["nom"]} "
    "avec une moyenne de ${moyenne(List<double>.from(meilleurEtudiant["notes"])).toStringAsFixed(2)}",
  );

  print(
    "Le pire étudiant est : ${pireEtudiant["nom"]} avec une moyenne de "
    "${moyenne(List<double>.from(pireEtudiant["notes"])).toStringAsFixed(2)}",
  );
}
