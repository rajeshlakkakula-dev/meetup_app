import 'package:flutter/cupertino.dart';

class Header extends StatelessWidget {
  Header(this.heading, {super.key});

  final String heading;

  @override
  Widget build(BuildContext context) => Padding(
        padding: EdgeInsets.all(8),
        child: Text(
          heading,
          style: TextStyle(fontSize: 24),
        ),
      );
}

class Paragraph extends StatelessWidget {
  Paragraph(this.content, {super.key});

  String content;

  @override
  Widget build(BuildContext context) => Padding(
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        child: Text(
          content,
          style: TextStyle(fontSize: 18),
        ),
      );
}

class IconAndDetail extends StatelessWidget {
  IconAndDetail(this.icon, this.details, {super.key});

  IconData icon;
  String details;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Row(
        children: [
          Icon(icon),
          SizedBox(
            width: 8,
          ),
          Text(
            details,
            style: TextStyle(fontSize: 18),
          )
        ],
      ),
    );
  }
}
