import 'package:flutter/material.dart';

class ExpandableButton extends StatefulWidget {
  late String text;
  late IconData icon;
  late Color mainColor, textColor, iconBgColor;
  late bool expanded, expandable;
  late double size;
  late Function onclickFunction;
  ExpandableButton({Key? key, required this.text, required this.icon, this.textColor = const Color(0xFF01080d), this.iconBgColor = Colors.white, required this.mainColor, this.expanded = false, this.size=1, this.expandable=true, required this.onclickFunction}) : super(key: key);

  @override
  State<ExpandableButton> createState() => _ExpandableButtonState();
}

class _ExpandableButtonState extends State<ExpandableButton> {
  @override
  Widget build(BuildContext context) {
    Widget button;
    Widget expandedButton = ClipRRect(
      borderRadius: BorderRadius.circular(64),
      child: ElevatedButton(
          onPressed: (){
            setState(() {
              if(widget.expandable){
              widget.onclickFunction();
              }
            });
          },
          style:  ButtonStyle(
            backgroundColor: MaterialStatePropertyAll<Color>(widget.mainColor),
          ),

          child: Padding(
            padding: EdgeInsets.all(12.0 * widget.size),
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: widget.iconBgColor,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(20.0*widget.size),
                    child: Icon(
                      widget.icon,
                      color: widget.mainColor,
                      size: 65*widget.size,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12*widget.size),
                  child: Text(widget.text,
                    style: TextStyle(
                      color: widget.textColor,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.bold,
                      fontSize: 23*widget.size,
                    ),),
                )],
            ),
          )
      ),
    );


    Widget contractedButton = ClipRRect(
      borderRadius: BorderRadius.circular(40),
      child: ElevatedButton(
        onPressed: (){
          setState(() {
            if (widget.expandable) {
              widget.onclickFunction();
            }
          });
        },
        style:  ButtonStyle(
          backgroundColor: MaterialStatePropertyAll<Color>(widget.mainColor),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 14.0*widget.size),
          child: Container(
            decoration: BoxDecoration(
                  color: widget.iconBgColor,
                  borderRadius: BorderRadius.circular(40),
              ),
            padding:  EdgeInsets.all(10.0*widget.size),
            child: Padding(
              padding:  EdgeInsets.all(15.0*widget.size),
              child: Icon(
                widget.icon,
                color: widget.mainColor,
                size: 65*widget.size,
              ),
            ),
          ),
        ),
      ),
    );

    if(widget.expanded){
      button = expandedButton;
    }else{
      button = contractedButton;
    }
    return button;
  }
}
