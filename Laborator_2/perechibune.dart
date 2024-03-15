// Pentru o lista data, sa se returneze numarul de "perechi bune".
// O pereche (i, j) este buna daca list[i] == list[j] si i != j. Fiecare pereche va fi reprezentata printr-un set.

void main() {
  List<int> list = [2 ,2, 2];
  int k = 0;
  for (int i = 0; i < list.length; i++) {
    for (int j = i + 1; j <list.length; j++) {
      if (list[i] == list[j]) {
        k++;
      }
    }
  }
  print(k);
  
}
