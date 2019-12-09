import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:interact_slides/app.dart';
import 'package:flutter_slides/flutter_slides.dart';
import 'package:interact_slides/slides/about_slide.dart';
import 'package:interact_slides/slides/bloc_slide.dart';
import 'package:interact_slides/slides/finally_slide.dart';
import 'package:interact_slides/slides/framework_slide.dart';
import 'package:interact_slides/slides/inherited_slide.dart';
import 'package:interact_slides/slides/provider_slide.dart';
import 'package:interact_slides/slides/redux_slide.dart';
import 'package:interact_slides/slides/setstate_slide.dart';
import 'package:interact_slides/slides/thanks_slide.dart';
import 'package:interact_slides/slides/welcome_slide.dart';
import 'package:interact_slides/slides/widget_slide.dart';

void main() {
  _enablePlatformOverrideForDesktop();

  final slides = _getSlides();
  final slideManager = SlideManager(slides);

  runApp(InteractApp(slides, slideManager));

}

void _enablePlatformOverrideForDesktop() {
  if (!kIsWeb && (Platform.isWindows || Platform.isLinux)) {
    debugDefaultTargetPlatformOverride = TargetPlatform.fuchsia;
  }
}

List<Slide> _getSlides() {
  return [
    Slide(route: WelcomeSlide()),
    Slide(route: AboutSlide()),
    Slide(route: FrameworkSlide()),
    Slide(route: WidgetSlide()),
    Slide(route: SetStateSlide()),
    Slide(route: InheritedSlide()),
    Slide(route: ProviderSlide()),
    Slide(route: BlocSlide()),
    Slide(route: ReduxSlide()),
    Slide(route: FinallySlide()),
    Slide(route: ThanksSlide()),
  ];
}
