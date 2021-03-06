import 'package:flutter/material.dart';

//import files
import 'package:eswm/config/config.dart' as config;
import 'package:eswm/widgets/cards/today_task/pra/pra_today_task_details.dart';

class TodayTaskCard extends StatefulWidget {
  const TodayTaskCard({Key? key}) : super(key: key);

  @override
  State<TodayTaskCard> createState() => _TodayTaskCardState();
}

class _TodayTaskCardState extends State<TodayTaskCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(2),
      padding: const EdgeInsets.all(18),
      width: MediaQuery.of(context).size.width,
      height: 280,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        gradient: const LinearGradient(
          colors: [
            Color.fromARGB(225, 51, 102, 255),
            Color.fromARGB(235, 0, 204, 255),
          ],
          begin: FractionalOffset(0.0, 1.0),
          end: FractionalOffset(1.0, 0.0),
          stops: [0.0, 1.0],
          tileMode: TileMode.decal,
        ),
      ),
      child: config.userRole == 1
          ? const PraTodayTaskDetails()
          : const Text("This is not PRA section"),
    );
  }
}
