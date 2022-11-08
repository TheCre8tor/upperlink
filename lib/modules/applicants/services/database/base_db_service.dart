import 'package:upperlink/modules/applicants/domain/domain.dart';

abstract class BaseDBService<T> {
  const BaseDBService();

  Stream<List<Applicant>> getAppplicants();

  Future<void> saveApplicant({
    String? id,
    String? firstName,
    String? surname,
    String? phoneNumber,
    String? email,
    String? coverLetter,
    String? passport,
    String? resume,
  });

  Future<T> openDB();
}
