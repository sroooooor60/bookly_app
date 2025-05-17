import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

abstract class Styles {
  //30
  static const textStyle30 = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.w600,
    fontFamily: AssetsData.gtsectraFont,
  );
  //20
  static const textStyle20 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    fontFamily: AssetsData.gtsectraFont,
  );
  //18
  static const textStyle18 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
  );
  //16
  static const textStyle16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );
  //14
  static const textStyle14 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal,
  );
}
