import 'package:flutter_app/view/pages/login_page.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(initialLocation: '/login', routes: [
  GoRoute(
    path: '/login',
    builder: (context, state) => const LoginPage(),
  ),
]);
