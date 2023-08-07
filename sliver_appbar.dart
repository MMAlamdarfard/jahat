import 'package:demo_todo/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppBarPage extends StatefulWidget {
  const AppBarPage({super.key});

  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<AppBarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: CustomScrollView(
          physics:const AlwaysScrollableScrollPhysics(),
        slivers: [
          SliverLayoutBuilder(
            builder: (con, consty) {
              final ColorTween colorTween = ColorTween(
                  begin: AppColors.foregroundColor,
                  end: AppColors.backgroundColor);
             
              return SliverAppBar(
                leading: Icon(Icons.menu,
                color: consty.scrollOffset>70?Colors.black:Colors.white), 
                elevation: 0,
                backgroundColor:(consty.scrollOffset>200)?AppColors.backgroundColor :
                    colorTween.transform(consty.scrollOffset / 200),
                expandedHeight: 200.0,
                collapsedHeight: 70,
                floating: true,
                pinned: true,
                automaticallyImplyLeading: false,
                flexibleSpace: FlexibleSpaceBar(
                  background: Stack(
                    children: [
                      Positioned(
                          left: 0,
                          bottom: 0,
                          child: Container(
                            width: Get.width,
                            height: 40,
                            decoration: const BoxDecoration(
                                color: AppColors.backgroundColor,
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(40),
                                  topLeft: Radius.circular(40),
                                )),
                          ))
                    ],
                  ),
                ),
              );
            },
          ),
          //Should Wrap all item with this widget (SliverToBoxAdapter) 
          ...List.generate(
              20,
              (index) => SliverToBoxAdapter(
                  child: ListTile(title: Text('Item $index'))))
           
        ],
        
      ),
    );
  }
}
