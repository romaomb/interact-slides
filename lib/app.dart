import 'package:flutter/material.dart';
import 'package:flutter_slides/flutter_slides.dart';

class InteractApp extends StatelessWidget {
  final List<Slide> slides;
  final SlideManager slideManager;

  const InteractApp(this.slides, this.slideManager);

  @override
  Widget build(BuildContext context) {
    return SlideProvider(
      manager: slideManager,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.orange),
        home: slides[0].route,
      ),
    );
  }
}
