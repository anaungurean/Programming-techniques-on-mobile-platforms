// Pentru o lista data, sa se returneze numarul de "perechi bune".
// O pereche (i, j) este buna daca list[i] == list[j] si i != j. Fiecare pereche va fi reprezentata printr-un set.

void main() {
  List<int> list = [1, 2, 3];
  Set<int> set = Set<int>.from(list);
  print(list.length - set.length);
}
