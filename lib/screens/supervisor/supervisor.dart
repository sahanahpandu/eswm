import 'package:flutter/material.dart';

//import files
import 'package:eswm/widgets/cards/today_task/today_task_card.dart';

import '../../widgets/listview/card_list_view.dart';

class Supervisor extends StatefulWidget {
  const Supervisor({Key? key}) : super(key: key);

  @override
  State<Supervisor> createState() => _SupervisorState();
}

class _SupervisorState extends State<Supervisor> {
  bool closeTopCard = false;

  void getTopCardStatus(status) {
    setState(() {
      closeTopCard = status;
    });
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double categoryHeight = size.height * 0.30;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 30, top: 15),
          child: Text(
            "Hi, Ahmad!",
            style: TextStyle(
              color: Colors.grey.shade800,
              fontSize: 24,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
        AnimatedOpacity(
          duration: const Duration(milliseconds: 400),
          opacity: closeTopCard ? 0 : 1,
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 400),
            width: size.width,
            alignment: Alignment.topCenter,
            height: closeTopCard ? 0 : categoryHeight,
            child: SizedBox(
              height: categoryHeight,
              child: const FittedBox(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 13,
                  ),
                  child: TodayTaskCard(),
                ),
              ),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 15, top: 10),
          child: Text(
            "Tugasan Saya",
            style: TextStyle(
              color: Colors.grey.shade500,
              fontWeight: FontWeight.w500,
              fontSize: 16,
            ),
          ),
        ),
        CardListView(type: "Laluan", topCardStatus: getTopCardStatus),
        //MyTaskList(topCardStatus: getTopCardStatus),
      ],
    );
  }
}