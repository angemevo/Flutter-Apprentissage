void main() {
  int a = 10;
  double pi = 3.14;
  int age = 22;
  String prenom = "Ange";
  bool estActif = true;

  print("${a + pi}, ${a - pi}, ${a * pi}, ${a / pi}, ${a ~/ pi}, ${a % pi}");
  print(
    "Salut je m'appelle $prenom et j'ai $age ans. Est-ce que je suis actif ? $estActif",
  );
}
