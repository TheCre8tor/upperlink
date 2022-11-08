import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:upperlink/shared/core/theme/theme.dart';
import 'package:upperlink/shared/infrastructure/router/router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp],
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: themeData,
      routerConfig: router,
      debugShowCheckedModeBanner: false,
      title: "Upperlink Digital Solutions",
    );
  }
}
