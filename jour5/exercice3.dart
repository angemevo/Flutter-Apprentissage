void main() {
  List<int> nombres = [2, 4, 6, 8, 10];

  nombres.forEach((nombre) {
    int carre = nombre * nombre;
    print("Le carré de $nombre est $carre");
  });
}
