import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:upperlink/modules/applicants/domain/domain.dart';
import 'package:upperlink/screens/applicants/register/cubit/applicant_cubit.dart';
import 'package:upperlink/shared/widgets/buttons/filled_button.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({Key? key}) : super(key: key);

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  String? passportUploadMsg;
  Uint8List? passport;
  String? resumeUploadMsg;
  Uint8List? resume;

  String? firstname;
  String? surname;
  String? phoneNumber;
  String? email;
  String? coverLetter;

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 24),
          TextFormField(
            style: const TextStyle(
              fontSize: 15,
            ),
            decoration: InputDecoration(
              label: const Text("First Name"),
              hintText: "Enter your surname",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              hintStyle: const TextStyle(
                color: Color(0xFFd5d5d5),
              ),
            ),
            onChanged: (value) {
              setState(() {
                firstname = value;
              });
            },
          ),
          const SizedBox(height: 25),
          TextFormField(
            style: const TextStyle(
              fontSize: 15,
            ),
            decoration: InputDecoration(
              label: const Text("Surname"),
              hintText: "Enter your surname",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              hintStyle: const TextStyle(
                color: Color(0xFFd5d5d5),
              ),
            ),
            onChanged: (value) {
              setState(() {
                surname = value;
              });
            },
          ),
          const SizedBox(height: 25),
          TextFormField(
            style: const TextStyle(
              fontSize: 15,
            ),
            decoration: InputDecoration(
              label: const Text("Phone Number"),
              hintText: "Enter your phone number",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              hintStyle: const TextStyle(
                color: Color(0xFFd5d5d5),
              ),
            ),
            keyboardType: TextInputType.phone,
            onChanged: (value) {
              phoneNumber = value;
            },
          ),
          const SizedBox(height: 25),
          TextFormField(
            style: const TextStyle(
              fontSize: 15,
            ),
            decoration: InputDecoration(
              label: const Text("Email Address"),
              hintText: "Enter your email address",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              hintStyle: const TextStyle(
                color: Color(0xFFd5d5d5),
              ),
            ),
            keyboardType: TextInputType.emailAddress,
            onChanged: (value) {
              setState(() {
                email = value;
              });
            },
          ),
          const SizedBox(height: 25),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Cover Letter",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 20),
              TextFormField(
                style: const TextStyle(
                  fontSize: 15,
                ),
                maxLines: 4,
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                  hintText: "Enter your first name",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  hintStyle: const TextStyle(
                    color: Color(0xFFd5d5d5),
                  ),
                ),
                onChanged: (value) {
                  coverLetter = value;
                },
              ),
            ],
          ),
          FilledButton(
            name: passportUploadMsg ?? "Upload Passport",
            padding: const EdgeInsets.only(top: 24),
            background: Colors.green,
            onPressed: () async {
              final result = await FilePicker.platform.pickFiles(
                type: FileType.custom,
                allowedExtensions: ['jpg', 'jpeg'],
              );
              if (result == null) return;

              final upload = result.files.first;

              if (upload.size > 100) return;

              Uint8List? file = upload.bytes;

              setState(() {
                passportUploadMsg = "Passport uploaded...";
                passport = file;
              });
            },
          ),
          FilledButton(
            name: "Upload Resume",
            padding: const EdgeInsets.only(top: 15),
            background: Colors.purple,
            onPressed: () async {
              final result = await FilePicker.platform.pickFiles(
                type: FileType.custom,
                allowedExtensions: ['pdf', 'doc', 'docx'],
              );

              if (result == null) return;

              final upload = result.files.first;

              if (upload.size > 2000) return;

              Uint8List? file = upload.bytes;

              setState(() {
                resumeUploadMsg = "Resume uploaded...";
                resume = file;
              });
            },
          ),
          FilledButton(
            name: "Apply",
            padding: const EdgeInsets.only(top: 54),
            background: Colors.blue,
            onPressed: () {
              context.read<ApplicantCubit>().saveApplicant(
                    applicant: Applicant(
                      firstName: firstname,
                      surname: surname,
                      phoneNumber: phoneNumber,
                      email: email,
                      coverLetter: coverLetter,
                      passport: passport,
                      resume: resume,
                    ),
                  );
            },
          )
        ],
      ),
    );
  }
}
