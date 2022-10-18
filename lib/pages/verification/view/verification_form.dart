import 'package:bailey_app/pages/verification/verification.dart';
import 'package:bailey_app/pages/widgets/digit_textfields.dart';
import 'package:bailey_app/pages/widgets/textfields.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// ignore: must_be_immutable
class VerificationForm extends StatelessWidget {
  VerificationForm({super.key});
  // ignore: prefer_final_fields
  List<TextEditingController> _controller =
      List.generate(6, (i) => TextEditingController());

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 10, top: 50),
          child: Text(
            'Verification Code',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 35,
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(
            left: 10,
            top: 30,
            bottom: 50,
          ),
          child: Text(
            'We have to send the verification to your email',
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(6, (index) {
              return Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: SizedBox(
                    height: 70,
                    width: 60,
                    child: Focus(
                      onFocusChange: (value) {
                        if (value) {
                          if (_controller[index].text.isNotEmpty) {
                            _controller[index].selection = const TextSelection(
                              baseOffset: 0,
                              extentOffset: 1,
                            );
                          }
                        }
                      },
                      child: TextFormField(
                        maxLength: 1,
                        controller: _controller[index],
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
                            counterText: ''),
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                        onChanged: (text) {
                          if (text.isEmpty) {
                            FocusScope.of(context).previousFocus();
                          } else {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                      ),
                    ),
                  ),
                ),
              );
            }),
          ),
        ),
        const VerificationTimer(),
        Expanded(
          child: Align(
            alignment: FractionalOffset.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: SizedBox(
                width: double.infinity,
                height: 60,
                child: OutlinedButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)))),
                  onPressed: () {},
                  child: const Text(
                    'Verify Now',
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
