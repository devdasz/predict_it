import 'package:flutter/material.dart';
import 'package:predict_it/commentsData.dart';
import 'package:predict_it/screens/related_screen.dart';

import 'reaction_screen.dart';

class Tabs extends StatelessWidget {
  const Tabs({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Column(
        children: [
          TabBar(
            indicatorColor: Theme.of(context).primaryColor,
            unselectedLabelColor: Colors.black26,
            labelColor: Theme.of(context).primaryColor,
            tabs: <Widget>[
              Tab(
                child: Text(
                  "Research & News",
                ),
              ),
              Tab(
                child: Text(
                  "Reactions",
                ),
              ),
              Tab(
                child: Text(
                  "Related",
                ),
              ),
            ],
          ),
          Expanded(
            child: TabBarView(
              children: <Widget>[
                // Research area--------------------
                Center(
                  child: Text("It's Research & News area"),
                ),

                // Reaction area--------------------
                GestureDetector(
                  // swipe up to show bottom sheet
                  onPanUpdate: (details) {
                    if (details.delta.dy < 0) {
                      showModalBottomSheet<void>(
                        backgroundColor: Colors.transparent,
                        constraints: BoxConstraints(
                            maxHeight:
                                MediaQuery.of(context).size.height / 2 + 20),
                        isScrollControlled: true,
                        enableDrag: true,
                        context: context,
                        builder: (BuildContext context) {
                          return Reaction_sheet();
                        },
                      );
                    }
                  },
                  // OnTap is also enabled to show the bottomsheet
                  onTap: () {
                    showModalBottomSheet<void>(
                      backgroundColor: Colors.transparent,
                      constraints: BoxConstraints(
                          maxHeight:
                              MediaQuery.of(context).size.height / 2 + 20),
                      isScrollControlled: true,
                      enableDrag: true,
                      context: context,
                      builder: (BuildContext context) {
                        return Reaction_sheet();
                      },
                    );
                  },
                  child: Column(
                    children: [
                      Row(
                        children: [
                          ImageIcon(
                            AssetImage("lib/assets/icons/mentions.png"),
                            size: 35,
                            color: Colors.grey,
                          ),
                          Text(
                            "215",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.grey),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          ImageIcon(
                              AssetImage(
                                  "lib/assets/icons/Comment Stroke Icon.png"),
                              size: 35,
                              color: Colors.grey),
                          Text(
                            "95K",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.grey),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: Image.asset(
                                Comments.elementAt(0).dpLocation,
                                // height: 60,
                                width: 40,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              Comments.elementAt(0).commentText,
                              maxLines: 2,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                // Reaaction area---------------------
                GestureDetector(
                  onTap: () {
                    showModalBottomSheet<void>(
                      backgroundColor: Colors.transparent,
                      constraints: BoxConstraints(
                          maxHeight:
                              MediaQuery.of(context).size.height / 2 + 20),
                      isScrollControlled: true,
                      enableDrag: true,
                      context: context,
                      builder: (BuildContext context) {
                        return Related_sheet();
                      },
                    );
                  },
                  child: Center(
                    child: Text("It's Related area"),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
