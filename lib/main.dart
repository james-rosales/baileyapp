import 'package:bailey_app/pages/dashboard/view/view.dart';
import 'package:bailey_app/pages/medical/view/view.dart';
import 'package:bailey_app/pages/verification/verification.dart';

import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final GoRouter _router = GoRouter(
    routes: <GoRoute>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const VerificationPage();
        },
      ),
      GoRoute(
        path: '/dashboard',
        builder: (BuildContext context, GoRouterState state) {
          return const DashboardPage();
        },
      ),
      GoRoute(
        path: '/medical',
        builder: (BuildContext context, GoRouterState state) {
          return const MedicalPage();
        },
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      title: 'Bailey App',
    );
  }
}
