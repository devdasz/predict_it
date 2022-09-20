class CommentData {
  CommentData(
      {required this.dpLocation,
      required this.personName,
      required this.time,
      required this.commentText,
      required this.replyCount});

  final String dpLocation;
  final String personName;
  final String time;
  final String commentText;
  final String replyCount;
}

List<CommentData> Comments = [
  // 1st comment
  CommentData(
      dpLocation: "lib/assets/images/alison.png",
      personName: "Prof.alison",
      time: "1h ago",
      commentText:
          "If China does indeed attack Taiwan soon, October is the likely time since the Taiwan Strait waters will be calm, facilitating amphibious operations. The drills around Taiwan allowed China to build up forces in Fujian, which is part of what's needed before an invasion.",
      replyCount: "5 REPLIES"),
// 2nd comment
  CommentData(
      dpLocation: "lib/assets/images/TomBN.png",
      personName: "TomBN",
      time: "3h ago",
      commentText:
          "I will be surprised if #China will in fact attack Taiwan. Doing so requires lots of courage, which China lacks.",
      replyCount: "1 REPLY"),
// 3rd comment
  CommentData(
      dpLocation: "lib/assets/images/Pik.png",
      personName: "Pik",
      time: "9h ago",
      commentText:
          "More Australians think that China will attack Australia than Taiwanese believe China will attack Taiwan",
      replyCount: "1 REPLY"),
// 4th comment
  CommentData(
      dpLocation: "lib/assets/images/alison2.png",
      personName: "Prof.alison",
      time: "9h ago",
      commentText:
          "The Pentagon has not changed its assessment thatChina is not planning to invade Taiwan in the next two years, the Defense Department’s top policy office said Monday, despite Beijing’s launching unprecedented military drills around the island last week. In answer to a question about whether the military has a new assessment as to whether China will take Taiwan by force in the next two years given the events of the last week, Colin Kahl, the undersecretary of defense for policy, said succinctly: “No.”",
      replyCount: "1 REPLY"),
// 5th comment
];
