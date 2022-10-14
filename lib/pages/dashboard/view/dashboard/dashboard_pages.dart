import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import '../../bloc/bloc.dart';
import '../view.dart';

class DashboardPages extends StatelessWidget {
  DashboardPages({super.key});
  final PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return BlocListener<DashboardBloc, DashboardState>(
      listenWhen: (previous, current) =>
          previous.currentTab != current.currentTab,
      listener: (context, state) {
        pageController.jumpToPage(state.currentTab.index);
      },
      child: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: pageController,
        children: [
          const DashboardBody(),
          const Text('tab 2'),
          Container(),
        ],
      ),
    );
  }
}
