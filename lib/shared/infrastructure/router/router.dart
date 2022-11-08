import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:upperlink/screens/applicants/register/pages/register_page.dart';

final GoRouter router = GoRouter(routes: <GoRoute>[
  GoRoute(
    path: '/',
    builder: (BuildContext context, GoRouterState state) {
      return const RegisterPage();
    },
    routes: [
      GoRoute(
        path: 'apply',
        builder: (BuildContext context, GoRouterState state) {
          return const RegisterPage();
        },
      ),
    ],
  ),
]);
