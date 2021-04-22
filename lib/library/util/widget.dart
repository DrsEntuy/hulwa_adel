import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:hulwa_adel/library/theme/theme.dart';

final spinkit = SpinKitFadingCube(
  color: mainColor,
  // size: 50.0,
);

final spinkitCircle = SpinKitCircle(
  color: mainColor,
  // size: 50.0,
);

final spinkitCircleButton = SpinKitCircle(
  color: Colors.white,
  size: 20.0,
);

final transitionFade = Transition.fadeIn;
