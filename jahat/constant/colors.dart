import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppColors {
  static var colors = [Colors.green, Colors.red, Colors.blue];
  static const Color foregroundColor = Color(0xff514BAE);
  static const Color backgroundColor = Color(0xffF8F8F9);
  static final light = ThemeData(
    primaryColor: Colors.white,
    brightness: Brightness.light,
  );
  static final dark = ThemeData(
    primaryColor: darkGreyClr,
    brightness: Brightness.dark,
  );
  static Brightness get statusBarBrightness =>
      Get.isDarkMode ? Brightness.light : Brightness.dark;
  static Color get appBarColor =>
      Get.isDarkMode ? const Color(0xFF292929) : Colors.white;
  static Color get statusBarIconColor =>
      Get.isDarkMode ? Colors.white : Colors.black;
  static Color get backgroundClolor =>
      Get.isDarkMode ? const Color(0xFF333333) : Colors.white;
  //Can Change this color
  //Start
  static Color get bottomNavigaitonBarSelectedColor =>
      Get.isDarkMode ? Colors.blue : Colors.blue;
  //End
  static Color get bottomNavigaitonBarUnselectedColor =>
      Get.isDarkMode ? Colors.white : const Color(0xFF424242).withOpacity(0.4);
  static Color get mainTextColor =>
      Get.isDarkMode ? Colors.white : Colors.black;

  static const darkThemeFirstColor = Color(0xFF27374D);
  static Color get mainColor =>
      Get.isDarkMode ? darkThemeFirstColor : Colors.white;
  static const Color bluishClr = Color(0xFF4e5ae8);
  static const Color yellowClr = Color(0xFFFFB746);
  static const Color pinkClr = Color(0xFFff4667);
  static const Color white = Colors.white;
  static const Color darkGreyClr = Color(0xFF121212);
  static const Color darkHeaderClr = Color(0xFF424242);
  static const Color blueColor = Colors.blue;
  static Color get greyColor => Get.isDarkMode ? Colors.black : Colors.white;
  static const ColorScheme lightColorScheme = ColorScheme(
    primary: Color(0xFFFFFFFF),
    secondary: Colors.black,
    background: Color(0xFF636363),
    surface: Color(0xFF808080),
    onBackground: Colors.white,
    error: Colors.redAccent,
    onError: Colors.redAccent,
    onPrimary: Colors.redAccent,
    onSecondary: Color(0xFF322942),
    onSurface: Color(0xFF241E30),
    brightness: Brightness.dark,
  );
  static ColorScheme darkColorScheme = ColorScheme(
    primary: const Color(0xFF333333), // <---- I set white color here
    secondary: Colors.white.withOpacity(0.95),
    background: const Color(0xFF636363),
    surface: const Color(0xFF808080),
    onBackground: Colors.white,
    error: Colors.redAccent,
    onError: Colors.redAccent,
    onPrimary: Colors.redAccent,
    onSecondary: const Color(0xFF322942),
    onSurface: const Color(0xFF241E30),
    brightness: Brightness.light,
  );

  static List<int> cardToDoColor = [
    4294924083,
    4291231801,
    4294951680,
    4283963461,
    4287630399,
    4294924895,
    4287465281,
    4294952555,
    4294938624,
    4294921022,
    4294928473,
    4287976017,
    4285138290,
    4293460223,
    4294920545,
    4294955366,
    4278638240,
    4294916188,
    4282227056,
    4294917709,
    4278228679,
    4281257024,
    4294914918,
    4278219993,
    4289793481,
    4294921472,
    4294924288,
    4294935296,
    4294941440,
    4286808445,
    4294950656,
    4294956800,
    4294958080,
    4294959360,
    4294761531,
    4292869888,
    4286266685,
    4286271293,
    4286276157,
    4286283069,
    4287527741,
    4288772925,
    4290476861,
    4292180797,
    4293884733,
    4294933309,
    4294927421,
    4294921277,
    4294915389,
    4294908733,
    4294901821,
    4282219340,
    4282219359,
    4282219379,
    4282219399,
    4282219419,
    4282219439,
    4282219460,
    4282219480,
    4282219500,
    4282214143,
    4282207467,
    4282200792,
    4282194372,
    4282187952,
    4282852471,
    4285815961,
    4292029870,
    4293811938,
    4291130094,
    4287338181,
    4287015143,
    4294799254,
    4283984811,
    4292008170,
    4282957795,
    4284451017,
    4285138290,
    4278203481,
    4278222503,
    4278233320,
    4279776326,
    4294955366,
    4280121460,
    4284852390,
    4289256156,
    4290477661,
    4286266745,
    4287284432,
    4284777345,
    4294959720,
    4294936351,
    4294942492,
    4294947133,
    4294932075,
    4294901929,
    4294926728,
    4292388785,
    4286480282,
    4285051818,
    4293694405,
    4293773239,
    4294238853,
    4294960807,
    4287428557,
    4291222207,
    4294042838,
    4293109943,
    4290754771,
    4289517738,
    4286766535,
    4294694044,
    4292131222,
    4292638492,
    4282614934,
    4285138290,
    4284497795,
    4289430433,
    4283105410,
    // 4278255615
  ];
}
