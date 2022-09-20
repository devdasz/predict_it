import 'package:flutter/gestures.dart';

import "../commentsData.dart";

import 'package:flutter/material.dart';

import 'commentTile.dart';

class Reaction_sheet extends StatelessWidget {
  const Reaction_sheet({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 2, 0, 0),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(20), topLeft: Radius.circular(20))),
      child: Column(
        children: [
          // For divider to acknowledge user that it is dragable
          SizedBox(
            width: 75,
            child: Divider(
              thickness: 4,
            ),
          ),
          // Reaction text and close button
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 0.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Reactions",
                  style: TextStyle(
                      color: Colors.grey.shade700,
                      fontWeight: FontWeight.w700,
                      fontSize: 20),
                ),
                CircleAvatar(
                  radius: 14,
                  backgroundColor: Color.fromARGB(223, 42, 42, 42),
                  child: IconButton(
                    color: Colors.white,
                    padding: EdgeInsets.all(2),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.close),
                  ),
                )
              ],
            ),
          ),
          // Tags -- Top Newest
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 1, horizontal: 8),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Top",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      )),
                      backgroundColor: MaterialStateProperty.all(Colors.black)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 1, horizontal: 8),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("Newest",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      )),
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      )),
                      backgroundColor: MaterialStateProperty.all(Colors.grey)),
                ),
              ),
            ],
          ),
          // Guideline link
          Container(
            decoration: BoxDecoration(color: Colors.grey.shade200),
            child: RichText(
                text: TextSpan(children: [
              TextSpan(
                  text:
                      "Remember to keep comments respectful and to follow our ",
                  style: TextStyle(color: Colors.black)),
              TextSpan(
                  text: "Community Guidelines",
                  style: TextStyle(color: Colors.blue),
                  recognizer: TapGestureRecognizer()..onTap = () {})
            ])),
          ),
          // Make Comment
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 1),
            child: ListTile(
              leading: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.asset(
                    "lib/assets/images/profilePic.png",
                    height: 50,
                  )),
              title: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Add comment...',
                ),
              ),
              trailing: Icon(
                Icons.add_circle_outline,
                size: 16,
              ),
            ),
          ),
          Divider(
            thickness: 1,
          ),
          Expanded(
              child: ListView.builder(
                  itemCount: Comments.length,
                  itemBuilder: (BuildContext context, int index) {
                    return CommentTile(
                      commentData: Comments[index],
                    );
                  })),
        ],
      ),
    );
  }
}
