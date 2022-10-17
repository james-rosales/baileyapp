import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../medical.dart';

class MedicalPages extends StatelessWidget {
  MedicalPages({super.key});
  final PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return BlocListener<MedicalBloc, MedicalState>(
      listenWhen: (previous, current) =>
          previous.currentTab != current.currentTab,
      listener: (context, state) {
        pageController.jumpToPage(state.currentTab.index);
      },
      child: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: pageController,
        children: [
          const MedicalBody(),
          const Center(child: Text('twdwdwab 2')),
          Container(),
        ],
      ),
    );
  }
}
