// Se da un numar n. Fiecare numar de la 1 la n este grupat in functie de suma cifrelor sale.
// Sa se returneze numarul de grupuri care au cele mai multe numere.

void main() {
  int n = 13;
  var groups = <int, int>{};
  int max = 0;
  int k = 0;

  for (int i = 1; i <= n; i++) {
    int sum = 0;
    int number = i;

    while (number > 0) {
      sum += number % 10;
      number = number ~/ 10;
    }

    if (groups.containsKey(sum)) {
      groups[sum] = groups[sum]! + 1;
    } else {
      groups[sum] = 1;
    }

    if (groups[sum]! > max) {
      max = groups[sum]!;
      k = 1;
    } else if (groups[sum] == max) {
      k = k + 1;
    }
  }

  print(k);
}

