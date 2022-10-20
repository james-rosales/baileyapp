import '../dashboard.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<DashboardBloc>(
      create: (context) => DashboardBloc(DashboardState()),
      child: Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(
            250.0,
          ),
          child: DashboardAppBar(),
        ),
        bottomNavigationBar: const DashboardNavigationBar(),
        body: DashboardPages(),
      ),
    );
  }
}
