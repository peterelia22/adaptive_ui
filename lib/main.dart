import 'package:adaptive_ui/views/home_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const AdaptiveApp());
}

class AdaptiveApp extends StatelessWidget {
  const AdaptiveApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

double getResponsiveFontSize(BuildContext context,
    {required double fontBaseSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = scaleFactor * fontBaseSize;
  double upperLimit = fontBaseSize * 1.2;
  double lowerLimit = fontBaseSize * 0.8;
  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(BuildContext context) {
  double width = MediaQuery.sizeOf(context).width;
  if (width < 600) {
    return width / 400;
  } else if (width < 900) {
    return width / 700;
  } else {
    return width / 1000;
  }
}
