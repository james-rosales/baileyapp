import '../Medical.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MedicalNavigationBar extends StatelessWidget {
  const MedicalNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    var bloc = context.read<MedicalBloc>();
    return BlocBuilder<MedicalBloc, MedicalState>(builder: (context, state) {
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
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: state.currentTab.index,
          onTap: (index) => bloc.add(MedicalTabPressed(index)),
          backgroundColor: const Color.fromARGB(255, 163, 207, 241),
          selectedItemColor: Colors.white,
          iconSize: 35,
        ),
      );
    });
  }
}
