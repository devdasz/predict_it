import 'package:flutter/material.dart';

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
                Center(
                  child: Text("It's Research & News area"),
                ),
                Center(
                  child: Text("It's Reaction area"),
                ),
                Center(
                  child: Text("It's Related area"),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
