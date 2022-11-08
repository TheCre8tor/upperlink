import 'dart:typed_data';

import 'package:equatable/equatable.dart';

class Applicant extends Equatable {
  final String firstName;
  final String surname;
  final int phoneNumber;
  final String email;
  final String coverLetter;
  final Uint8List passport;
  final Uint8List resume;

  const Applicant({
    required this.firstName,
    required this.surname,
    required this.phoneNumber,
    required this.email,
    required this.coverLetter,
    required this.passport,
    required this.resume,
  });

  @override
  List<Object?> get props => [
        firstName,
        surname,
        phoneNumber,
        email,
        coverLetter,
        passport,
        resume,
      ];
}
