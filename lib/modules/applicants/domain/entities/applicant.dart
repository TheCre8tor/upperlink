import 'dart:typed_data';

import 'package:equatable/equatable.dart';

class Applicant extends Equatable {
  final String? firstName;
  final String? surname;
  final String? phoneNumber;
  final String? email;
  final String? coverLetter;
  final Uint8List? passport;
  final Uint8List? resume;

  const Applicant({
    this.firstName,
    this.surname,
    this.phoneNumber,
    this.email,
    this.coverLetter,
    this.passport,
    this.resume,
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
