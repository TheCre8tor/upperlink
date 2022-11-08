import 'dart:ffi';

import 'package:ruqe/ruqe.dart';
import 'package:upperlink/modules/applicants/domain/entities/applicant.dart';
import 'package:upperlink/modules/applicants/repository/applicant_repository.interface.dart';
import 'package:upperlink/modules/applicants/services/database/base_db_service.dart';
import 'package:uuid/uuid.dart';

class ApplicantRepository implements BaseApplicantRepository {
  final BaseDBService _dbService;

  const ApplicantRepository({required BaseDBService dbService})
      : _dbService = dbService;

  @override
  Future<Result<void, AppError>> registerApplicant(Applicant applicant) {
    try {
      _dbService.saveApplicant(
        id: const Uuid().v4(),
        firstName: applicant.firstName,
        surname: applicant.surname,
        phoneNumber: applicant.phoneNumber,
        email: applicant.email,
        coverLetter: applicant.coverLetter,
        passport: applicant.passport.toString(),
        resume: applicant.resume.toString(),
      );

      return Future.value(const Ok(null));
    } catch (err) {
      return Future.value(const Err("Can't save applicant, try again"));
    }
  }
}
