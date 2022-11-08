import 'package:kiwi/kiwi.dart';
import 'package:upperlink/modules/applicants/repository/applicant_repository.dart';
import 'package:upperlink/modules/applicants/services/database/isar_db_service.dart';
import 'package:upperlink/modules/applicants/usecases/save_applicant.dart';
import 'package:upperlink/screens/applicants/register/cubit/applicant_cubit.dart';

final container = KiwiContainer();

Future<void> init() async {
  container.registerSingleton(
    (c) => ApplicantCubit(usecase: c.resolve<SaveApplicant>()),
  );

  container.registerSingleton(
    (c) => SaveApplicant(repository: c.resolve<ApplicantRepository>()),
  );

  container.registerSingleton(
    (c) => ApplicantRepository(dbService: c.resolve<IsarDBService>()),
  );

  container.registerSingleton((c) => IsarDBService());
}
