import 'package:aeroplane/ui/pages/get_started_page.dart';
import 'package:aeroplane/ui/pages/splash_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MayApp());

class MayApp extends StatelessWidget {
  const MayApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const SplashPage(),
        '/get-started': (context) => const GetStartedPage()
      },
    );
  }
}
