import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:demo_todo/constant/appstyle.dart';
import 'package:demo_todo/widget/TextFieldWidget.dart';
import '../controller/controller.dart';
import '../model/note.dart';

class MyBottomSheet extends StatefulWidget {
  final bool isUpdate;
  final Note notes;
  const MyBottomSheet({super.key, required this.isUpdate, required this.notes});

  @override
  State<MyBottomSheet> createState() => _MyBottomSheetState();
}

class _MyBottomSheetState extends State<MyBottomSheet> {
  final Controller controller = Get.find();

  @override
  Widget build(BuildContext context) {
    TextEditingController sheetController =
        TextEditingController(text: controller.getAddNewCategoryText());
    sheetController.selection = TextSelection.fromPosition(
        TextPosition(offset: sheetController.text.length));

    return Container(
      padding: const EdgeInsets.all(30),
      height: MediaQuery.of(context).size.height * 0.38,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(16)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const SizedBox(
            width: double.infinity,
            child: Text(
              "ایجاد برد جدید",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
          Divider(
            thickness: 1,
            color: Colors.grey.shade200,
          ),
          const SizedBox(
            height: 12,
          ),
          const Text(
            "نام برد",
            style: AppStyle.headingone,
          ),
          const SizedBox(
            height: 6,
          ),
          MyTextField(
            minline: 1,
            onChanged: (value) {
              controller.setAddNewCategoryText(value);
            },
            hintText: "نام برد",
            maxline: 1,
            textEditingController: sheetController,
          ),
          const SizedBox(
            height: 12,
          ),
          const SizedBox(
            height: 12,
          ),
          Row(
            children: [
              Expanded(
                  child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.blue.shade800,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                    side: BorderSide(color: Colors.blue.shade800),
                    padding: const EdgeInsets.symmetric(vertical: 14)),
                child: const Text(
                  "لغو",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              )),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                  child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue.shade800,
                    foregroundColor: Colors.white,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                    padding: const EdgeInsets.symmetric(vertical: 14)),
                onPressed: () {
                 
                  if (sheetController.text.isNotEmpty) {
                    controller.addNewCategory(sheetController.text);
                  }
                   Navigator.pop(context);
                },
                child: const Text(
                  "ایجاد",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              )),
            ],
          )
        ],
      ),
    );
  }
}
