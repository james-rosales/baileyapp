import 'package:bailey_app/pages/dashboard/dashboard.dart';
import 'package:bailey_app/pages/widgets/changeable_image.dart';
import 'package:bailey_app/pages/widgets/icon_buttons.dart';
import 'package:bailey_app/pages/widgets/labeled_container.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

// ignore: must_be_immutable
class DashboardBody extends StatelessWidget {
  const DashboardBody({super.key});

  @override
  Widget build(BuildContext context) {
    var bloc = context.read<DashboardBloc>();
    return BlocBuilder<DashboardBloc, DashboardState>(
        builder: (context, state) {
      return SingleChildScrollView(
          child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: InkWell(
                  child: const IconButtons(
                    backgroundcolor: Color.fromARGB(255, 124, 187, 247),
                    label: 'Medical Charts',
                    coloricon: Colors.white,
                    textColor: Colors.white,
                    prefix: FontAwesomeIcons.suitcaseMedical,
                  ),
                  onTap: () {
                    context.push('/medical');
                  },
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: IconButtons(
                  backgroundcolor: Color.fromARGB(255, 247, 124, 124),
                  label: 'Labs & Imaging',
                  coloricon: Colors.white,
                  textColor: Colors.white,
                  prefix: FontAwesomeIcons.heartPulse,
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: IconButtons(
                  backgroundcolor: Color.fromARGB(255, 124, 247, 210),
                  label: 'Prescriptions',
                  coloricon: Colors.white,
                  textColor: Colors.white,
                  prefix: FontAwesomeIcons.pills,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        'Reminders',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'View All',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 200,
                  child: PageView.builder(
                    onPageChanged: (value) => bloc.add(ReminderPageChanged()),
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: LabeledContainer(
                                firstIcon: Icons.calendar_month_outlined,
                                medicalName: state.namestate[index],
                                medicalHospital: state.hospitalstate[index],
                                medicalDate: state.datestate[index],
                                medicalTime: state.timestate[index],
                                secondIcon: Icons.watch_later_outlined),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: List.generate(4, (dotIndex) {
                              return Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: Container(
                                  height: 10,
                                  width: 10,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                      10,
                                    ),
                                    color: dotIndex == index
                                        ? Colors.blue
                                        : const Color.fromARGB(
                                            255, 164, 208, 245),
                                  ),
                                ),
                              );
                            }),
                          ),
                        ],
                      );
                    },
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Resources',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    width: double.infinity,
                    height: 150,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(
                          10,
                        ),
                      ),
                      color: Color.fromARGB(255, 163, 207, 241),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              ClipRRect(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(10)),
                                child: Image.network(
                                  'https://www.verywellhealth.com/thmb/FxsZJqv1vKp5CR5rWJxuMlCr7ck=/2121x1414/filters:no_upscale():max_bytes(150000):strip_icc()/GettyImages-559537149-5953c40e3df78c1d42508917.jpg',
                                  cacheHeight: 120,
                                  cacheWidth: 120,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 15.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  // ignore: prefer_const_literals_to_create_immutables
                                  children: [
                                    const Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        'HCP Directory\n',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: SizedBox(
                                        height: 90,
                                        width: 165,
                                        child: ListView(
                                          children: const [
                                            Text(
                                              'Lorem] ipsum dolor sit amet, consecteLorem ipsum dolor sit amet, consectetur adpiscing elit. Lorem ipsum dolor sit amet, consecteturLorem ipsum dolor sit amet, consectetur adpiscing elit. Lorem ipsum dolor sit amet, consecteturtur adpiscing elit. Lorem ipsum dolor sit amet, consectetur',
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding:
                      EdgeInsets.only(left: 10, right: 10, top: 20, bottom: 10),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Partnerships',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                ),
                SizedBox(
                  height: 250,
                  child: PageView.builder(
                      itemCount: 200,
                      itemBuilder: (context, index) {
                        return const ChangeableImage();
                      }),
                )
              ],
            ),
          ),
        ],
      ));
    });
  }
}
