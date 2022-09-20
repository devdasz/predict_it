import 'package:flutter/material.dart';
import "../commentsData.dart";

class CommentTile extends StatelessWidget {
  const CommentTile({
    Key? key,
    required this.commentData,
  }) : super(key: key);
  final CommentData commentData;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      // main row
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image.asset(
                commentData.dpLocation,
                // height: 60,
                width: 40,
              ),
            ),
          ),
          // Column to hold name, comment text and icons
          Expanded(
              child: Column(
            children: [
              // Row to hold name and time
              Row(
                children: [
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: commentData.personName,
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w600)),
                    TextSpan(
                        text: ".",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 29)),
                    TextSpan(
                        text: commentData.time,
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w600))
                  ]))
                ],
              ),
              // commnet text
              Text(commentData.commentText),
              // like dislike share
              Row(
                children: [
                  ImageIcon(
                    AssetImage(
                      "lib/assets/icons/Like.png",
                    ),
                    size: 30,
                  ),
                  ImageIcon(
                    AssetImage(
                      "lib/assets/icons/Dislike.png",
                    ),
                    size: 30,
                  ),
                  ImageIcon(
                    AssetImage(
                      "lib/assets/icons/Like 3.png",
                    ),
                    size: 30,
                  )
                ],
              ),
              // Reply
              Row(children: [
                Text(
                  commentData.replyCount,
                  style: TextStyle(color: Colors.blue),
                )
              ])
            ],
          ))
        ],
      ),
    );
  }
}
