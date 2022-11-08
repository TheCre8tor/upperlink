import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:upperlink/dependency_injection.dart';
import 'package:upperlink/modules/applicants/usecases/save_applicant.dart';
import 'package:upperlink/screens/applicants/register/cubit/applicant_cubit.dart';
import 'package:upperlink/screens/applicants/register/widgets/form/register_form.dart';
import 'package:upperlink/shared/widgets/form/form_background.dart';

part 'register_view.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => container<ApplicantCubit>(),
      child: const _RegisterView(),
    );
  }
}
