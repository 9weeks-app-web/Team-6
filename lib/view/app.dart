import 'package:flutter/material.dart';
import 'package:flutter_app/view/router.dart';

class SFACpolioApp extends StatelessWidget {
  const SFACpolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(fontFamily: 'Pretendard'),
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      routeInformationParser: router.routeInformationParser,
      routeInformationProvider: router.routeInformationProvider,
      routerDelegate: router.routerDelegate,
    );
  }
}
