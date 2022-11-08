import 'package:upperlink/modules/applicants/domain/domain.dart';

abstract class BaseDBService<T> {
  const BaseDBService();

  Stream<List<Applicant>> getAppplicants();

  Future<void> saveApplicant({
    required String id,
    required String firstName,
    required String surname,
    required int phoneNumber,
    required String email,
    required String coverLetter,
    required String passport,
    required String resume,
  });

  Future<T> openDB();
}
