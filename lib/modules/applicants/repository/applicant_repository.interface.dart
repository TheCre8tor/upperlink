import 'package:ruqe/ruqe.dart';
import 'package:upperlink/modules/applicants/domain/domain.dart';

typedef AppError = String;

abstract class BaseApplicantRepository {
  Future<Result<void, AppError>> registerApplicant(
    Applicant applicant,
  );
}
