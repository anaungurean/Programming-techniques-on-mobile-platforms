// Se da un numar n. Fiecare numar de la 1 la n este grupat in functie de suma cifrelor sale.
// Sa se returneze numarul de grupuri care au cele mai multe numere.

void main() {
  int n = 13;
  var groups = <int, int>{};
  int maxCount = 0;
  int groupCount = 0;

  for (int i = 1; i <= n; i++) {
    int sum = i.toString().split('').map(int.parse).reduce((a, b) => a + b);

    groups[sum] = (groups[sum] ?? 0) + 1;

    if (groups[sum]! > maxCount) {
      maxCount = groups[sum]!;
      groupCount = 1;
    } else if (groups[sum] == maxCount) {
      groupCount++;
    }
  }

  print(groupCount);
}
