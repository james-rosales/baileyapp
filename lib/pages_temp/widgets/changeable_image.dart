import 'package:flutter/material.dart';

class ChangeableImage extends StatelessWidget {
  const ChangeableImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(30)),
        child: Image.network(
          'https://www.verywellhealth.com/thmb/FxsZJqv1vKp5CR5rWJxuMlCr7ck=/2121x1414/filters:no_upscale():max_bytes(150000):strip_icc()/GettyImages-559537149-5953c40e3df78c1d42508917.jpg',
        ),
      ),
    );
  }
}
