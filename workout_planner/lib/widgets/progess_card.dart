import 'package:flutter/material.dart';
import 'package:workout_planner/constants/colors.dart';

class progessCard extends StatefulWidget {
  final double progressValue;
  final int total;
  const progessCard({
    super.key,
    required this.progressValue,
    required this.total,
  });

  @override
  State<progessCard> createState() => _progessCardState();
}

class _progessCardState extends State<progessCard> {
  @override
  Widget build(BuildContext context) {
    int done = (widget.progressValue * widget.total).toInt();

    return Container(
      height: 300,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [kMainColor, kGradientBottomColor]),
      ),
      child:  Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Proteins, Fats, Water & \nCarbohydrates",
              style: TextStyle(
                fontSize: 27,
                fontWeight: FontWeight.w600,
                color: kMainWhiteColor,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            LinearProgressIndicator(
              value: widget
                  .progressValue, 
              backgroundColor:
                  kGradientBottomColor, // Grey color for unfilled region
              valueColor: const AlwaysStoppedAnimation<Color>(Colors.white),
              borderRadius: BorderRadius.circular(100),
              minHeight: 15,
            ),
          ],
        ),
      ),
    );
  }
}
