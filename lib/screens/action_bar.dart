import 'package:flutter/material.dart';

class ActionBar extends StatelessWidget {
  const ActionBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
      decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xff2e20db), Color(0xffe432c1)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(15),
              bottomRight: Radius.circular(15))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // chance
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 2),
                child: Text(
                  "CHANCE",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w500),
                ),
              ),
              Text(
                "11%",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                    fontSize: 23),
              )
            ],
          ),
          // arrow icon
          ImageIcon(
            AssetImage("lib/assets/icons/upArrow.png"),
            color: Color.fromARGB(255, 92, 214, 96),
          ),

          // amount
          Column(
            children: [
              Text(
                "24H",
                style: TextStyle(color: Colors.white),
              ),
              Text("+25495\$", style: TextStyle(color: Colors.white))
            ],
          ),

          // yes button
          Column(
            children: [
              Text("\$09",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 20)),
              ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll<Color>(
                          Colors.green.shade300)),
                  onPressed: () {},
                  child: Text("Yes",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          fontSize: 20)))
            ],
          ),
          // No button
          Column(
            children: [
              Text("\$89",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 20)),
              ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll<Color>(Color(0xFFE432C1))),
                  child: Text("No"))
            ],
          ),
        ],
      ),
    );
  }
}
