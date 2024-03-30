import 'package:flutter/material.dart';
class CountTrackerWidget extends StatelessWidget {
  final int steps;
  final int totalSteps;

  const CountTrackerWidget({
    Key? key,
    required this.steps,
    required this.totalSteps,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double progress = steps / totalSteps;

    return Stack(
      children: [
        // Background Circle
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.grey[200],
          ),
        ),

        // Step Indicator Dots
        Positioned(
          bottom: 20,
          left: 0,
          right: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(totalSteps, (index) => _buildStepDot(index, progress)),
          ),
        ),

        // Text Label
        Center(
          child: Text(
            "$steps steps",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }

  Widget _buildStepDot(int index, double progress) {
    final color = index < progress * totalSteps ? Colors.green : Colors.grey;
    return Container(
      width: 8,
      height: 8,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
      ),
    );
  }
}