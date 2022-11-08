import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:upperlink/shared/widgets/buttons/filled_button.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({Key? key}) : super(key: key);

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  String? coverLetterName;

  @override
  Widget build(BuildContext context) {
    return Form(
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
              ),
            ],
          ),
          FilledButton(
            name: coverLetterName ?? "Upload Passport",
            padding: const EdgeInsets.only(top: 24),
            background: Colors.green,
            onPressed: () async {
              final result = await FilePicker.platform.pickFiles();
              if (result == null) return;

              final upload = result.files.first;

              setState(() {
                coverLetterName = "Passport uploaded...";
              });

              // final file = File(result!.files.single.path!);
              // print("File name: ${upload.name}");
              // print("File name: ${upload.bytes}");
              // print("File name: ${upload.size}");
              // print("File name: ${upload.extension}");
              // print("File name: ${upload.path}");
            },
          ),
          FilledButton(
            name: "Upload Resume",
            padding: const EdgeInsets.only(top: 15),
            background: Colors.purple,
            onPressed: () {},
          ),
          FilledButton(
            name: "Apply",
            padding: const EdgeInsets.only(top: 54),
            background: Colors.blue,
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
