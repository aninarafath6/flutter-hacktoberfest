import 'package:flutter/material.dart';

class SendCard extends StatelessWidget {
  String name, cardNumber, imagePath;
  SendCard({Key? key, required this.name, required this.cardNumber, this.imagePath="assets/images/avatar.jpg"}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        children: [CircleAvatar(
          backgroundImage: AssetImage(imagePath),
          radius: 35,
        ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
                 Text(name,
                  style: const TextStyle(
                      color: Color(0xFF393938),
                      fontWeight: FontWeight.bold,
                      fontSize: 16
                  ),
                ),
                Row(
                  children: [
                    const Icon(Icons.wallet, color: Color(0xFFb5b4b5),),
                    Text("**** $cardNumber",
                      style: const TextStyle(
                        color: Color(0xFFb5b4b5),
                        fontSize: 10,
                      ),
                    )
                  ],

                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
