import 'package:ruqe/ruqe.dart';
import 'package:upperlink/modules/applicants/domain/domain.dart';
import 'package:upperlink/modules/applicants/repository/applicant_repository.interface.dart';
import 'package:upperlink/shared/usecases/usecase.dart';

class SaveApplicant implements Usecase<Applicant, void> {
  final BaseApplicantRepository _repository;

  const SaveApplicant({required BaseApplicantRepository repository})
      : _repository = repository;

  @override
  Future<Result<void, AppError>> call(Applicant params) async {
    return await _repository.registerApplicant(params);
  }
}
