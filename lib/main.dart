import 'package:aeroplane/ui/pages/splash_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MayApp());

class MayApp extends StatelessWidget {
  const MayApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashPage(),
    );
  }
}
