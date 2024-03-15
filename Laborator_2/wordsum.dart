// Se da de la tastatura un sir de litere si numere (unde fiecare numar corespunde literei anterioare) si un cuvant.
// Pentru cuvantul primit sa se afiseze suma numerelor, folosind valoarea corespunzatoare pentru fiecare litera din cuvant.

void main(List<String> arguments) {
  if (arguments.length == 0) {
    print('No arguments provided');
    return;
  }

  if (arguments.length == 1) {
    print('No word provided');
    return;
  }

  if (arguments.length % 2 == 0) {
    print('The arguments must be pairs of letter and number');
    return;
  }

  if (arguments[arguments.length - 1].length < 1) {
    print('The last argument must be a word');
    return;
  }

  try {
    for (var i = 0; i < arguments.length - 2; i++) {
      if (arguments[i].length != 1 ||
          arguments[i].codeUnitAt(0) < 65 ||
          arguments[i].codeUnitAt(0) > 122) {
        print('The first part of the pair must be a letter');
        return;
      }
      if (int.tryParse(arguments[i + 1]) == null ||
          arguments[i + 1].contains('-') ||
          arguments[i + 1].contains('.')) {
        print('The second part of the pair must be a natural number');
        return;
      }
      i += 1;
    }
  } catch (e) {
    print('Invalid arguments');
    return;
  }
  var s = <String, int>{};
  int index = 0;
  String word = '';
  for (var argument in arguments) {
    if (argument.length > 1) {
      word = argument;
      break;
    }
    if (index % 2 == 0) {
      s[argument] = int.parse(arguments[index + 1]);
    }
    index++;
  }

  int sum = 0;
  for (var i = 0; i < word.length; i++) {
    sum += s[word[i]]!;
  }
  print('Sum of the numbers: $sum');
}
