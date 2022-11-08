import 'dart:typed_data';

import 'package:isar/isar.dart';

part 'applicant_db.g.dart';

@Collection()
class ApplicantDB {
  Id get isarId => fastHash(id);

  late String id;

  late String firstName;

  late String surname;

  late int phoneNumber;

  late String email;

  late String coverLetter;

  late String passport;

  late String resume;
}

/// FNV-1a 64bit hash algorithm optimized for Dart Strings
int fastHash(String string) {
  var hash = 0xcbf29ce484222325;

  var i = 0;
  while (i < string.length) {
    final codeUnit = string.codeUnitAt(i++);
    hash ^= codeUnit >> 8;
    hash *= 0x100000001b3;
    hash ^= codeUnit & 0xFF;
    hash *= 0x100000001b3;
  }

  return hash;
}
