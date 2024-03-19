import 'dart:convert';
import 'dart:io';

Map<String, dynamic> jsonSubJson(String jsonPath1, String jsonPath2) {

  String content1 = File(jsonPath1).readAsStringSync();
  String content2 = File(jsonPath2).readAsStringSync();

  Map<String, dynamic> json1 = json.decode(content1);
  Map<String, dynamic> json2 = json.decode(content2);

  Set<String> keys1 = json1.keys.toSet();
  Set<String> keys2 = json2.keys.toSet();
  Set<String> differenceKeys = keys1.difference(keys2);

  Map<String, dynamic> resultJson = {};
  for (String key in differenceKeys) {
    resultJson[key] = json1[key];
  }

  return resultJson;
}

void main() {
  String jsonPath1 = 'C://Users//anama//OneDrive//Desktop//Mobile//Laborator_4//file1.json';
  String jsonPath2 = 'C://Users//anama//OneDrive//Desktop//Mobile//Laborator_4//file2.json';

  Map<String, dynamic> result = jsonSubJson(jsonPath1, jsonPath2);

  print('The result is:');
  print(json.encode(result));

}
