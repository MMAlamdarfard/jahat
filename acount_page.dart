

import 'package:demo_todo/constant/colors.dart';
import 'package:demo_todo/constant/string.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
class AcountPage extends StatelessWidget {
  const AcountPage({super.key});

  @override
  Widget build(BuildContext context) {
   
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.light,
        statusBarColor: Colors.transparent,
        statusBarBrightness: Brightness.dark));
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
      backgroundColor: AppColors.foregroundColor, 
      onPressed: () {
    // when clicked on floating action button prompt to create user
   
     },
     label:const Text('ویرایش اطلاعات'),
     icon:const Icon(Icons.edit),
    ),
      body:
       Stack(textDirection: TextDirection.rtl, children: [
        Positioned(
          top: 0,
          left: 0,
         child:SizedBox(
            width: Get.width, 
           child: Stack(
                children: <Widget>[
                  //stack overlaps widgets
                  Opacity(
                    //semi red clippath with more height and with 0.5 opacity
                    opacity: 0.5,
                    child: ClipPath(
                      clipper: WaveClipper(), //set our custom wave clipper
                      child: Container(
                        color: AppColors.foregroundColor,
                        height: 250,
                      ),
                    ),
                  ),
         
                  ClipPath(
                    //upper clippath with less height
                    clipper: WaveClipper(), //set our custom wave clipper.
                    child: Container(
                        
                        color: AppColors.foregroundColor,
                        height: 230,
                        alignment: Alignment.center,)
                        
                  ),
                ],
              ),
         )
        
        ),
        Positioned(
          top: 0,
          left: 0,
          child: SizedBox(
            width: Get.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () => Get.back(),
                        icon: const Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: Get.width * 0.09,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Stack(children: [
                    Image.asset(
                      fit: BoxFit.cover,
                      "assets/images/profile.png",
                      width: Get.width * 0.45,
                      height: Get.width * 0.45,
                    ),
                    Positioned(
                        bottom: 5,
                        right: 5,
                        child: Icon(
                          Icons.add_a_photo,
                          size: 35,
                          color: Colors.grey.shade600,
                        ))
                  ]),
                ),
                const SizedBox(
                  height: 40,
                ),
                const UserField(
                    icon: Icons.account_circle,
                    text: "علیرضا بابایی",
                    title: "نام و نام خانوادگی"),
                const UserField(
                    icon: Icons.account_circle_outlined,
                    text: "@babaie",
                    title: "نام کاربری"),
                const UserField(
                    icon: Icons.email,
                    text: "exampe@gmail.com",
                    title: "ایمیل"),
                UserField(
                    icon: Icons.phone,
                    text: "09199989999".toFarsiNumber(),
                    title: "شماره تلفن")
              ],
            ),
          ),
        ),
      ]),
    );
  }
}

class UserField extends StatelessWidget {
  const UserField(
      {super.key, required this.icon, required this.text, required this.title});
  final IconData icon;
  final String text, title;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  title,
                  style: TextStyle(color: Colors.grey.shade600, fontSize: 16),
                ),
                Text(
                  text,
                  style: const TextStyle(color: Colors.black, fontSize: 18),
                ),
                const Divider(
                  thickness: 0.5,
                )
              ],
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Center(
            child: Icon(
              icon,
              size: 30,
             
              color: AppColors.backgroundColor,
            ),
          ),
        ],
      ),
    );
  }
}

class WaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(
        0, size.height); //start path with this if you are making at bottom

    var firstStart = Offset(size.width / 5, size.height);
    //fist point of quadratic bezier curve
    var firstEnd = Offset(size.width / 2.25, size.height - 50.0);
    //second point of quadratic bezier curve
    path.quadraticBezierTo(
        firstStart.dx, firstStart.dy, firstEnd.dx, firstEnd.dy);

    var secondStart =
        Offset(size.width - (size.width / 3.24), size.height - 105);
    //third point of quadratic bezier curve
    var secondEnd = Offset(size.width, size.height - 10);
    //fourth point of quadratic bezier curve
    path.quadraticBezierTo(
        secondStart.dx, secondStart.dy, secondEnd.dx, secondEnd.dy);

    path.lineTo(
        size.width, 0); //end with this path if you are making wave at bottom
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false; //if new instance have different instance than old instance
    //then you must return true;
  }
}
