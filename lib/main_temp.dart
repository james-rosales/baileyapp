import 'package:bailey_app/pages/splash_screen/view/screen_page.dart';
import 'package:bailey_app/pages_temp/dashboard/view/view.dart';
import 'package:bailey_app/pages_temp/medical/view/view.dart';
import 'package:bailey_app/pages_temp/verification/verification.dart';
import 'package:bailey_app/pages_temp/verification/view/verification_timer_expired.dart';

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
          return const ScreenPage();
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
      GoRoute(
        path: '/sessiondialog',
        builder: (BuildContext context, GoRouterState state) {
          return const VerificationTimerExpired();
        },
      ),
      GoRoute(
        path: '/verification',
        builder: (BuildContext context, GoRouterState state) {
          return const VerificationPage();
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
