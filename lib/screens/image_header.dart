import 'package:flutter/material.dart';

class ImageHeader extends StatelessWidget {
  const ImageHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      borderOnForeground: false,
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 280,
            child: Stack(
              children: [
                Positioned.fill(
                  child: Ink.image(
                    image: AssetImage("lib/assets/images/soldier.png"),
                    fit: BoxFit.cover,
                    child: Container(),
                  ),
                ),
                Positioned(
                    bottom: 15,
                    left: 15,
                    right: 15,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            "Will China invade Taiwan before end september?",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w800),
                          ),
                        ),
                        Icon(
                          Icons.home,
                          color: Colors.white,
                        )
                      ],
                    )),
                Positioned(
                    right: 15,
                    top: 15,
                    child: Icon(
                      Icons.home,
                      color: Colors.white,
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
