// Scrieti o functie care primeste ca parametru un String si o lista de expresii
//regulate si returneaza o lista de stringuri care fac match pe cel putin una dintre
//expresiile regulate primite ca parametru.

import 'dart:core';

List<String> matchSubstring(String text, List<String> regexpList) {
  Set<String> result = {};
  for (String regexp in regexpList) {
    RegExp regex = RegExp(regexp);
    Iterable<Match> matches = regex.allMatches(text);
    for (Match match in matches) {
      result.add(match.group(0)!);
    }
  }
  return result.toList();
}

void main() {
  String text = "ANA are tRei mere.";
  List<String> regexpList = [
    r"\b\w{3}\b", // cuvinte de exact 3 caractere
    r"\b[a-z]+\b", // cuvinte care conțin doar litere mici
    r"\b[A-Z]+\b", // cuvinte care conțin doar litere mari
  ];
  List<String> matches = matchSubstring(text, regexpList);
  print(matches);
}
