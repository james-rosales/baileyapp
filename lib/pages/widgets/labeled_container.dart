import 'package:flutter/material.dart';

class LabeledContainer extends StatelessWidget {
  const LabeledContainer({
    super.key,
    this.medicalName,
    this.medicalHospital,
    required this.firstIcon,
    required this.secondIcon,
    this.medicalDate,
    this.medicalTime,
  });
  final String? medicalName;
  final String? medicalHospital;
  final IconData firstIcon;
  final IconData secondIcon;
  final String? medicalDate;
  final String? medicalTime;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 150,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
        color: Color.fromARGB(255, 163, 207, 241),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20, top: 20),
            child: Align(
              alignment: Alignment.centerLeft,
              child: SizedBox(
                height: 20,
                width: double.infinity,
                child: ListView(
                  children: [
                    Text(
                      medicalName!,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Color.fromARGB(255, 88, 170, 236)),
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20, top: 20),
            child: Align(
              alignment: Alignment.centerLeft,
              child: SizedBox(
                height: 20,
                width: double.infinity,
                child: ListView(
                  children: [
                    Text(
                      medicalHospital!,
                      style: const TextStyle(
                          color: Color.fromARGB(255, 142, 141, 141)),
                    )
                  ],
                ),
              ),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20.0, top: 20),
                child: Row(
                  children: [
                    Icon(
                      firstIcon,
                      color: Colors.blue,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: SizedBox(
                        height: 15,
                        width: 150,
                        child: ListView(
                          children: [
                            Text(
                              medicalDate!,
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 66, 161, 238)),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  children: [
                    Icon(
                      secondIcon,
                      color: Colors.blue,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: SizedBox(
                        height: 15,
                        width: 100,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 5.0),
                          child: ListView(
                            children: [
                              Text(
                                medicalTime!,
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 66, 161, 238)),
                              )
                            ],
                          ),
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
    );
  }
}
