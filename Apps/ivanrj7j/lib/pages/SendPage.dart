import 'package:flutter/material.dart';
import 'BalancePage.dart';
import 'package:ivanrj7j/utils/SendCard.dart';

class SendPage extends StatefulWidget {
  const SendPage({Key? key}) : super(key: key);

  @override
  State<SendPage> createState() => _SendPageState();
}

class _SendPageState extends State<SendPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [Container(
            color: const Color(0xFFffffff),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [


                    Row(
                      children: [
                        RawMaterialButton(
                            onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) =>  BalancePage(balance: "26.000", userImage: "assets/images/avatar.jpg")));},
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Container(
                                padding: const EdgeInsets.all(12),
                                color: const Color(0xFFf7f4f3),
                                child: const Icon(
                                  Icons.arrow_back_ios_new_sharp,
                                  size: 48,
                                ),
                              ),
                            ),
                        ),
                        const Text(
                          "Send Money",
                          style: TextStyle(
                              color: Color(0xFF181919),
                              fontSize: 36,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.bold
                          ),)
                      ],
                    ),
                    /* TOP SECTION */


                    Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "Send To",
                            style: TextStyle(
                                color: Color(0xFFd38146),
                                fontSize: 30,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.bold
                            ),),

                          Text(
                            "see all",
                            style: TextStyle(
                                color: Color(0xFF78afd8),
                                fontSize: 14,
                                fontFamily: "Poppins",
                                decoration: TextDecoration.underline,
                            ),
                          ),
                        ],
                      ),
                    ),
                    /*send to title section */


                    Container(
                      height: 110,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          SendCard(name: "John", cardNumber: "1608",),
                          SendCard(name: "Joe", cardNumber: "6969",),
                          SendCard(name: "Sasuke", cardNumber: "0420",),
                        ],
                      ),
                    ),
                    /* send to section */

                    // Note: Same code is applied for the TextFormField as well
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 38),
                      child: TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.attach_money, size: 35, color: Color(0xFFbbb8b7),),
                          enabledBorder: UnderlineInputBorder( //<-- SEE HERE
                            borderSide: BorderSide(
                                width: 3, color: Color(0xFFe5f0da)),
                          ),                          // textS
                        ),
                        style: TextStyle(
                          color: Color(0xFF161717),
                          fontFamily: "Poppins",
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )

                  ],
                )
              ],
            )
          ),]
        ),
      ),
    );
  }
}

