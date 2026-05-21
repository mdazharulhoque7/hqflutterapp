import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  final Widget child;
  final List<Color> colors;

  const GradientContainer({super.key, this.colors = const [Color.fromARGB(255, 14, 65, 14),Color.fromARGB(233, 2, 33, 5),] ,required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: const [0.7, 1.0],
        ),
      ),
      child: child,
    );
  }

  // @override
  // Widget build(BuildContext context) {
  //   return Container(
  //     width: double.infinity,
  //     padding: const EdgeInsets.all(12),
  //     decoration: const BoxDecoration(
  //       gradient: LinearGradient(
  //         colors: [
  //           Color.fromARGB(255, 18, 70, 20),
  //           Color.fromARGB(179, 218, 11, 11),
  //         ],
  //         begin: Alignment.topLeft,
  //         end: Alignment.bottomRight,
  //         stops: [0.7, 1.0],
  //       ),
  //     ),
  //     child: child,
  //   );
  // }
}