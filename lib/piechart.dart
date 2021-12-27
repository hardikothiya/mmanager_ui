import 'package:flutter/cupertino.dart';

import 'data.dart';

class pieChart extends StatelessWidget {
  const pieChart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 20),
      child: Container(
        height: 200,
        width: 200,
        decoration: BoxDecoration(
            boxShadow: customShadow,
            shape: BoxShape.circle,
            color: primaryColor),
        child: Stack(
          children: [
            CustomPaint(
              foregroundPainter: PieChartPainter(),
            ),
            Center(
              child: Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                    boxShadow: customShadow,
                    shape: BoxShape.circle,
                    color: primaryColor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PieChartPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
