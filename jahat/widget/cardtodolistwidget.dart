
import 'package:demo_todo/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:persian_datetime_picker/persian_datetime_picker.dart';


class CardTodoListWidget extends StatelessWidget {
  
  final VoidCallback onTap;
  final Function(int)? ondelete;
  const CardTodoListWidget({
    super.key,
    required this.onTap,
    required this.ondelete,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Ink(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              //border: Border.all(color: Colors.black)
              ),
          child: InkWell(
            onTap: onTap,
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 15,vertical: 5),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.more_horiz)),
                        const Text(
                          "داشبورد طراحی برای ادمین",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              overflow: TextOverflow.ellipsis
                            ),
                        ),
                      ],
                    ),
                    Container(
                      margin:const EdgeInsets.only(top: 5),
                      height: 30,
                      child: ListView.builder(
                          reverse: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: 2,
                          itemBuilder: (context, index) {
                            String text = index == 0 ? "یادداشت" : "جلسه";
                           
                            return Container(
                              margin: const EdgeInsets.symmetric(
                                horizontal: 5,
                              ),
                              padding: const EdgeInsets.symmetric(
                                horizontal: 15,
                              ),
                              decoration: BoxDecoration(
                                  //color: color,
                                  border: Border.all(color: Colors.black),
                                  borderRadius: BorderRadius.circular(30)),
                              child: Center(
                                child: Text(
                                  text,
                                  style: const TextStyle(color: Colors.black),
                                ),
                              ),
                            );
                          }),
                    ),
                    Container(
                      margin:const EdgeInsets.only(top: 5),
                      child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                           Row(
                            children: [
                              Wrap(
                                children: [
                                  LimitedBox(
                                     maxHeight: 40,
                                     
                                     child: ListView.builder(
                                         scrollDirection: Axis.horizontal,
                                         itemCount: 3,
                                         reverse: true,
                                         shrinkWrap: true,
                                         itemBuilder: (context, index) {
                                          
                                         return index==2?Align(
                                             widthFactor: 0.2,
                                             child: ClipOval(
                                             child: Container(
                                                  color: Colors.white,
                                                   child: Container(
                                                    color: AppColors.backgroundColor,
                                                   height: 25,
                                                   width: 25,
                                                      child :const Center(
                                                        child: Text("+2"),
                                                      )
                                                  ),
                                              ),
                                            ),
                                          ):Align(
                                             widthFactor: 0.6,
                                             child: ClipOval(
                                             child: Container(
                                                  color: Colors.white,
                                                   child: SizedBox(
                                                   height: 35,
                                                   width: 35,
                                                      child : Image.asset(
                                                      "assets/images/profile.png",
                                                     ) //build your avatar view
                                                  ),
                                              ),
                                            ),
                                          );
                                      },
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(width: 10,),
                               const Wrap(
                                children: [
                                  Icon(
                                    Icons.messenger_outline_sharp,
                                    size: 20,
                                    
                                  ),
                                  
                                  Text( "2",
                                  style: TextStyle(
                                     
                                  ),)
                                ],
                              ),
                            
                              const SizedBox(
                                width: 10,
                              ),
                              const Wrap(
                                children: [
                                   Icon(
                                    Icons.attach_file_sharp,
                                    size: 20,
                                    ),
                                    Text("5")
                                ],
                              ),
                             
                             
                            ],
                          ),
                          Wrap( 
                            children: [
                              Text( 
                                format1(Gregorian.fromDateTime(DateTime.now()).toJalali(),  
                              ),textDirection:TextDirection.rtl
                              ),
                              const SizedBox(width: 10,),
                              const Icon(
                                Icons.calendar_month,
                                color: Colors.grey,
                                size: 20,
                              ),
                              
                              
                            ],
                          ),
                        
                        ],
                      ),
                    ),
                  ]),
            ),
          ),
        ),
      ),
    );
  }

  String format1(Date d) {
    final f = d.formatter;
    return '${f.d} ${f.mN} ${f.yyyy}';
  }
}
