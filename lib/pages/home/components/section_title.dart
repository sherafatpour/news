import 'package:flutter/material.dart';

class SectionTitle extends StatefulWidget {
  final Function() moreClick;
  final String title;
  final String clickTitle;



  SectionTitle(this.moreClick, this.title, [this.clickTitle = "بیشتر"]);
  @override
  _SectionTitleState createState() => _SectionTitleState();
}

class _SectionTitleState extends State<SectionTitle> {

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          widget.title,
          style: Theme.of(context).textTheme.titleSmall,
        ),
        TextButton(
          onPressed:widget.moreClick,
          child: Text(
            widget.clickTitle,
            style: Theme.of(context).textTheme.button!.copyWith(color: Colors.blueAccent),
          ),
        )
      ],
    );
  }
}
