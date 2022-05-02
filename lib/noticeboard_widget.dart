import 'package:flutter/material.dart';
class NoticeBoardWidget extends StatelessWidget {
  const NoticeBoardWidget({Key? key, required this.heading, required this.body, required this.imageUrl}) : super(key: key);
  final String heading;
  final String body;
  final String imageUrl;


  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(title: Text(heading),subtitle: Text(body),trailing: Image.network(imageUrl) ,)
    );
  }
}
