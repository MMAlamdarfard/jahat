import 'package:demo_todo/constant/colors.dart';
import 'package:demo_todo/constant/string.dart';
import 'package:flutter/material.dart';
import 'package:shamsi_date/shamsi_date.dart';

class JalaliLinearDatePicker extends StatelessWidget {
  const JalaliLinearDatePicker(
      {super.key,
      required this.startDate,
      required this.finishDate,
      required this.selectedDate,
      required this.onSelectDate});
  final Jalali startDate;
  final Jalali finishDate;
  final Jalali selectedDate;
  final Function(Jalali) onSelectDate;

  @override
  Widget build(BuildContext context) {
    //bool b1 = j1 < j2
    int distance = (finishDate ^ startDate)+1;
    if (distance < 0) {
      return const Text("error");
    }

    List<Jalali> jalali =List.generate(distance, (index) => Jalali.now() + index);

    return SizedBox(
      height: 100,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: jalali.length,
          itemBuilder: (context, index) {
            TextStyle style = TextStyle(
              fontSize: 16,
              color: isTheSame(selectedDate, jalali[index])
                  ? Colors.white
                  : Colors.grey.shade700,
            );
            return Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: () {
                  onSelectDate(jalali[index]);
                 
                },
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  margin: const EdgeInsets.symmetric(horizontal: 5),
                  width: 80,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: isTheSame(selectedDate, jalali[index])
                          ? AppColors.foregroundColor
                          : Colors.grey.shade200),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(jalali[index].formatter.mN, style: style),
                      Text(jalali[index].day.toString().toFarsiNumber(), style: style),
                      Text(weekDays[(jalali[index].weekDay-1) % 7], style: style)
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }

  bool isTheSame(Jalali first, Jalali second) {
    return first.day == second.day &&
        first.month == second.month &&
        first.year == second.year;
  }

  static final List<String> weekDays = [
    'شنبه',
    'یکشنبه',
    'دوشنبه',
    'سه شنبه',
    'چهارشنبه',
    'پنجشنبه',
    'جمعه',
  ];
}
