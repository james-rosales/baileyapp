import 'dart:async';

import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../verification.dart';

// ignore: must_be_immutable
class VerificationForm extends StatefulWidget {
  const VerificationForm({super.key});

  @override
  State<VerificationForm> createState() => _VerificationFormState();
}

class _VerificationFormState extends State<VerificationForm> {
  // ignore: prefer_final_fields
  List<TextEditingController> _controller =
      List.generate(6, (i) => TextEditingController());

  // ignore: prefer_final_fields
  List<FocusNode> _focusNodes = List.generate(6, (i) => FocusNode());

  @override
  void initState() {
    Timer(const Duration(seconds: 60), () {
      context.push('/sessiondialog');
    });
    super.initState();

    for (int i = 0; i < _controller.length; i++) {
      _controller[i].addListener(() {
        if (_controller[i].value.text.length == 5 &&
            i < _controller.length - 1) {
          _focusNodes[i + 1].requestFocus();
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    var bloc = context.read<VerificationBloc>();

    return BlocBuilder<VerificationBloc, VerificationState>(
        builder: (context, state) {
      String errortext = state.errorText;
      bool errorcolor;
      if (errortext == 'Verification Code Approved') {
        errorcolor = true;
      } else {
        errorcolor = false;
      }
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
                      // child: Focus(
                      //   onFocusChange: (value) {
                      //     if (value) {
                      //       if (_controller[index].text.isNotEmpty) {
                      //         _controller[index].selection = const TextSelection(
                      //           baseOffset: 0,
                      //           extentOffset: 1,
                      //         );
                      //       }
                      //     }
                      //   },
                      child: TextFormField(
                        maxLength: 1,
                        focusNode: _focusNodes[index],
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
                          String str = '';
                          for (int i = 0; i < 6; i++) {
                            str += _controller[i].text;
                          }
                          bloc.add(ConfirmCode(str));
                        },
                      ),
                    ),
                  ),
                  // ),
                );
              }),
            ),
          ),
          const VerificationTimer(),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                state.errorText,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    color: errorcolor ? Colors.green : Colors.red),
              ),
            ),
          ),
          Align(
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
                  onPressed: () {
                    bloc.add(const VerifiyPressed());
                  },
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
        ],
      );
    });
  }
}
