import 'package:flutter/material.dart';
import 'package:flutter_app/view/router.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SFACApp extends StatelessWidget {
  const SFACApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      builder: FToastBuilder(),
      theme: ThemeData(fontFamily: 'Pretendard'),
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      routeInformationParser: router.routeInformationParser,
      routeInformationProvider: router.routeInformationProvider,
      routerDelegate: router.routerDelegate,
    );
  }
}
