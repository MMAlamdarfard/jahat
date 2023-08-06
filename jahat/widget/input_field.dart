import 'package:flutter/material.dart';
import 'package:get/get.dart';


class MyInputField extends StatelessWidget {
  final String title;
  final String hint;
  final TextEditingController? controller;
  final Widget? widget;
  const MyInputField(
      {super.key,
      required this.title,
      required this.hint,
      this.controller,
      this.widget});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
           Text(
             title,
             style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Get.isDarkMode ? Colors.white : Colors.black),
           ),
           Container(
            margin: const EdgeInsets.only(top: 8),
            padding: const EdgeInsets.only(left: 14,right: 5),
            height: 52,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey,
                width: 1.0
              ),
              borderRadius: BorderRadius.circular(12)
            ),
            child: Row(
              children:[
                Expanded(
                  child: TextFormField(
                    textDirection: TextDirection.rtl,
                    readOnly: widget!=null,
                    autofocus: false,
                    cursorColor: Get.isDarkMode?Colors.grey[100]:Colors.grey[700],
                    controller: controller,
                    style:  TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[Get.isDarkMode ? 100 : 700]),
                    decoration: InputDecoration(
                      hintText: hint,
                      hintStyle:  TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[Get.isDarkMode ? 100 : 700]),
                      border: InputBorder.none
                                    
                    ),
                  )
                ),
                widget==null?Container():Container(child: widget,) 
              ] 
            ),
           )
          ]
        ),
    );
  }
}
