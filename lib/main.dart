import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:interact_slides/app.dart';
import 'package:flutter_slides/flutter_slides.dart';
import 'package:interact_slides/slides/welcome_slide.dart';

void main() {
  _enablePlatformOverrideForDesktop();

  final slides = _getSlides();
  final slideManager = SlideManager(slides);

  runApp(InteractApp(slides, slideManager));
}

void _enablePlatformOverrideForDesktop() {
  if (!kIsWeb && (Platform.isMacOS || Platform.isWindows || Platform.isLinux)) {
    debugDefaultTargetPlatformOverride = TargetPlatform.fuchsia;
  }
}

List<Slide> _getSlides() {
  return [
    Slide(route: WelcomeSlide()),
  ];
}
