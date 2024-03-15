// Pentru un sir de numere date ca argumente la linia de comanda (reprezentand un intreg foarte mare),
// sa se construiasca o lista unde fiecare element este o cifra a acestui numar.
//Sa se afiseze lista corespunzatoare numarului primit ca argument, incrementat cu 1.

bool isNumeric(String value) {
  return int.tryParse(value) != null;
}

bool allDigits(List<String> arguments) {
  for (var argument in arguments) {
    if (!isNumeric(argument) || argument.length != 1 ) {
      return false;
    }
  }
  return true;
}

void main(List<String> arguments) {
  if (arguments.length == 0) {
    print('No arguments provided');
    return;
  }

  if (!allDigits(arguments)) {
    print('The arguments must be digits');
    return;
  }

  try {
    List<int> number = arguments.map((arguments) => int.parse(arguments)).toList();
    for (int i = number.length - 1; i >= 0; i--) {
      if (number[i] == 9) {
        number[i] = 0;
      } else {
        number[i]++;
        break;
      }
    }
    if (number[0] == 0) {
      number.insert(0, 1);
    }
    print('List for the number incremented by 1: $number');
  } catch (e) {
    print('Invalid number');
    return;
  }
}
