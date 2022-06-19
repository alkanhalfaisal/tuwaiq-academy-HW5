List<String> studentNames = ['Faisal', 'Khalid', 'Nawaf', 'Sara', 'Mohammed'];
void main(List<String> args) {
  print('Before do anything');
  print(studentNames);
  print('=================');
  deleteByIndex(name: 'Faisal');
  print('after delete first name');
  print(studentNames);
  print('=================');
  insertToList(name: 'Fahad');
  print('after add fahad to the list');
  print(studentNames);
  print('=================');
  print('First name in the list');
  printFirstName();
  print('=================');
  print('Longest name in the list: ${longestName()}');
}

void deleteByIndex({required String name}) {
  //removing first name occur with (name) from studentNames list
  studentNames.remove(name);
}

int insertToList({required String name}) {
  // insert to the list and return number of elements in the list
  studentNames.add(name);
  return studentNames.length;
}

void printFirstName() {
  //print first name in studentNames list
  print(studentNames[0]);
}

String? longestName() {
  int longest = 0;
  String? longestName;
  for (String name in studentNames) {
    if (name.length > longest) {
      longestName = name;
      longest = name.length;
    }
  }
  return longestName;
}
