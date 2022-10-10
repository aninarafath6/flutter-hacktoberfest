import 'package:flutter/material.dart';
import 'package:ivanrj7j/pages/SendPage.dart';
import 'package:ivanrj7j/utils/CustomTile.dart';
import 'package:ivanrj7j/utils/ExpandableButton.dart';


class BalancePage extends StatefulWidget {
  late String currency, balance, userImage;
  bool sendButtonExpanded = true;
  bool receiveButtonExpanded = false;
  BalancePage({Key? key, required this.balance, this.currency="\$", required this.userImage}) : super(key: key);

  @override
  State<BalancePage> createState() => _BalancePageState();
}

class _BalancePageState extends State<BalancePage> {
  void collapseButtons(){
    setState(() {
      widget.sendButtonExpanded = !widget.sendButtonExpanded;
      widget.receiveButtonExpanded = !widget.receiveButtonExpanded;
    });
  }
  @override
  Widget build(BuildContext context) {
    String heading;
    List<CustomTile> customTiles = [
      CustomTile(title: "Groceries", isLoss: widget.sendButtonExpanded, money: "420.6",),
      CustomTile(title: "Shopping", isLoss: widget.sendButtonExpanded, money: "69.42",),
      CustomTile(title: "Parking", isLoss: widget.sendButtonExpanded, money: "666.0",),
      CustomTile(title: "Beach", isLoss: widget.sendButtonExpanded, money: "02.42",),
    ];
    if(widget.sendButtonExpanded){
      heading = "Last Send";
    }else{
      heading = "Last Received";
    }
    Widget sendButton = ExpandableButton(text: "Send", icon: Icons.keyboard_double_arrow_up, mainColor: const Color(0xFFb0e6ee), expanded: widget.sendButtonExpanded,size: 0.6, onclickFunction: collapseButtons,);
    Widget receiveButton = ExpandableButton(text: "Receive", icon: Icons.keyboard_double_arrow_down, mainColor: const Color(0xFFcfedaa),size: 0.6, onclickFunction: collapseButtons, expanded: widget.receiveButtonExpanded,);

    return Scaffold(
      body: SafeArea(
        child: Container(
          color: const Color(0xFFffffff),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Icon(Icons.flutter_dash),
                      // placeholder logo,

                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10) ,
                          child: Image.asset(
                            widget.userImage,
                            width: 70,
                          ),
                        ),
                      ),
                      // avatar image

                      const Icon(Icons.more_horiz_rounded),

                    ],
                  ),
                  /* User Info Section */

                  const SizedBox(height: 28,),

                  Column(
                    children: [
                      const Text("Available Balance",
                        style: TextStyle(
                            color: Color(0xFF83bdea),
                            fontFamily: "Poppins"
                        ),),
                      Text(
                        "${widget.currency}${widget.balance}",
                        style: const TextStyle(
                            color: Color(0xFF181919),
                            fontSize: 46,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.bold
                        ),)
                    ],
                  ),
                  /*Balance Section*/

                  const SizedBox(height: 25,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      sendButton,
                      receiveButton,
                      ExpandableButton(text: "Send", icon: Icons.apps_rounded, mainColor: const Color(0xFFfce9c8),size: 0.6, expandable: false, onclickFunction: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const SendPage()),);
                      },),
                    ],
                  )
                  /* send and receive section */

                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 24),
                child: Text(heading,
                  style: const TextStyle(
                    fontSize: 26,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.bold,
                  ),),
              ),
              /* Heading Text */

              Expanded(
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children:  customTiles,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}