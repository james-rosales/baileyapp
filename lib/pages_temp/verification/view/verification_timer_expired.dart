import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class VerificationTimerExpired extends StatelessWidget {
  const VerificationTimerExpired({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 150, bottom: 30),
              child: Image.network(
                'https://cdn-icons-png.flaticon.com/512/6179/6179354.png',
                width: 150,
                height: 150,
              ),
            ),
          ),
          const Text(
            'Your session has expired.',
            style: TextStyle(color: Color.fromARGB(255, 222, 155, 244)),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: SizedBox(
              width: 150,
              height: 50,
              child: OutlinedButton(
                onPressed: () {
                  context.push('/verification');
                },
                style: OutlinedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 225, 114, 240),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      10,
                    ),
                  ),
                  side: const BorderSide(
                    color: Color.fromARGB(255, 245, 164, 234),
                    width: 2,
                  ),
                ),
                child: const Text(
                  'Try again',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
