import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../constant/colors.dart';
import '../constant/string.dart';
import '../services/theme_services.dart';


// ignore: must_be_immutable
class MyAppBar extends StatefulWidget {
  Color? backgroundColor;
  Color? iconsColor;
  Brightness? statusBarColor;
  MyAppBar({super.key, this.backgroundColor,this.iconsColor,this.statusBarColor});

  @override
  State<MyAppBar> createState() => _MyAppBarState();
}

class _MyAppBarState extends State<MyAppBar> {
  
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.light,
        statusBarColor: Colors.transparent));
  
    return Container(
        decoration: BoxDecoration(
          color: AppColors.foregroundColor,
          
          boxShadow: [
            BoxShadow(
              color: AppColors.foregroundColor.withOpacity(0.4),
              blurRadius: 5.0,
              spreadRadius: 1.0,
            ),
          ],
        ),
        padding: const EdgeInsets.only(left: 20, right: 20, top: 25, bottom: 5),
        width: context.isLandscape ? Get.height : Get.width,
        height: 90,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset(
                  "assets/images/profile.png",
                  width: 35,
                  height: 35,
                  fit: BoxFit.cover,
                ),
                const SizedBox(
                  width: 5,
                ),
                IconButton(
                    onPressed: () {}, icon: const Icon(
                      CupertinoIcons.bell,
                      color: Colors.white,
                      )
                      ),
                IconButton(
                  onPressed: (() {
                    ThemeService().switchTheme();
                  }),
                  icon: Icon(
                      Get.isDarkMode?
                          Icons.wb_sunny_outlined:
                           Icons.nightlight_outlined ,
                      size: 20,
                      color: Colors.white),
                ),
              ],
            ),
           const Text(
              AppString.appName,
              style: TextStyle(fontSize: 24, color: Colors.white),
            )
          ],
        ));
    
  }
}
