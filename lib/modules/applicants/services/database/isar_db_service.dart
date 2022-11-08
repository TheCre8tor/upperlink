import 'package:isar/isar.dart';
import 'package:upperlink/modules/applicants/domain/entities/applicant.dart';
import 'package:upperlink/modules/applicants/services/database/base_db_service.dart';
import 'package:upperlink/modules/applicants/services/database/isar_db/applicant_db.dart';

class IsarDBService implements BaseDBService<Isar> {
  late Future<Isar> db;

  IsarDBService() {
    db = openDB();
  }

  @override
  Future<Isar> openDB() async {
    if (Isar.instanceNames.isEmpty) {
      return await Isar.open([ApplicantDBSchema], inspector: true);
    }

    return Future.value(Isar.getInstance());
  }

  @override
  Stream<List<Applicant>> getAppplicants() {
    // TODO: implement getAppplicants
    throw UnimplementedError();
  }

  @override
  Future<void> saveApplicant({
    required String id,
    required String firstName,
    required String surname,
    required int phoneNumber,
    required String email,
    required String coverLetter,
    required String passport,
    required String resume,
  }) async {
    final isar = await db;

    var applicant = ApplicantDB()
      ..id = id
      ..firstName = firstName
      ..surname = surname
      ..phoneNumber = phoneNumber
      ..email = email
      ..coverLetter = coverLetter
      ..passport = passport
      ..resume = resume;

    await isar.writeTxn(() => isar.applicantDBs.put(applicant));
  }
}
