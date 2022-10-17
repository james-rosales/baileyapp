import 'package:bailey_app/pages/widgets/digit_textfields.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class VerificationForm extends StatelessWidget {
  VerificationForm({super.key});
  List<TextEditingController> _controller =
      List.generate(6, (i) => TextEditingController());
  @override
  Widget build(BuildContext context) {
    return Listener(
      onPointerDown: (_) {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus &&
            currentFocus.focusedChild != null) {
          currentFocus.focusedChild!.unfocus();
        }
      },
      child: Column(
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
          // Padding(
          //   padding: const EdgeInsets.all(10.0),
          //   child: Row(
          //     children: [
          //       DigitTextfields(),
          //       DigitTextfields(),
          //       DigitTextfields(),
          //       DigitTextfields(),
          //       DigitTextfields(),
          //       DigitTextfields(),
          //     ],
          //   ),
          // ),
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
                      child: TextFormField(
                        controller: _controller[index],
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                        onChanged: (text) => FocusScope.of(context).nextFocus(),
                      ),
                    ),
                  ),
                );
              }),
            ),
          ),
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
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
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
      ),
    );
  }
}
