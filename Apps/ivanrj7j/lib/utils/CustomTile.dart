import 'package:flutter/material.dart';

class CustomTile extends StatelessWidget {
  late String title, time, money;
  late bool isLoss;
  CustomTile({Key? key, required this.title, this.money = "69.42", this.isLoss = false, this.time="10:11 PM"}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String moneyText;
    Color moneyColor;
    if(isLoss){
      moneyText = "-\$$money";
      moneyColor = const Color(0xFFd58c58);
    }else{
      moneyText = "+\$$money";
      moneyColor = const Color(0xFF5ba4df);
    }
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(width: 1),
            borderRadius: BorderRadius.circular(18)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title,
                    style: const TextStyle(
                      fontSize: 20,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.bold,
                    ),),
                  Text(time.toUpperCase(),
                    style: const TextStyle(
                      fontSize: 13,
                      fontFamily: "Poppins",
                      color: Color(0xFFaeafae),
                    ),),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10),
              child: Text(moneyText,
                style: TextStyle(
                  fontSize: 22,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.bold,
                  color: moneyColor,
                ),),
            )
          ],
        ),
      ),
    );
  }
}
