import '../dashboard.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DashboardNavigationBar extends StatelessWidget {
  const DashboardNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    var bloc = context.read<DashboardBloc>();
    return BlocBuilder<DashboardBloc, DashboardState>(
        builder: (context, state) {
      return ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(
            20,
          ),
        ),
        child: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.b),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.fileCirclePlus),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.folderOpen),
              label: '',
            ),
          ],
          currentIndex: state.currentTab.index,
          onTap: (index) => bloc.add(DashboardTabPressed(index)),
          backgroundColor: const Color.fromARGB(255, 163, 207, 241),
          selectedItemColor: Colors.white,
          iconSize: 35,
        ),
      );
    });
  }
}
