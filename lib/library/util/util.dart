class UserData {
  static String pcUserData = '';
}

class UserToken {
  static String pcUserToken = '';
}

String getInitials(initialName) {
  List<String> names = initialName.split("");
  String initials = "";
  int numWords = 1;

  int nameLength = 2;
  if (names.length == 1) {
    nameLength = names.length;
  }
  if (numWords < nameLength) {
    numWords = nameLength;
  }
  for (var i = 0; i < numWords; i++) {
    initials += '${names[i][0]}';
  }

  return initials;
}
