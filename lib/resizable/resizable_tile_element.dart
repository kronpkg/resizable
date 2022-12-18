import 'package:flutter/material.dart';

class ResizableTileElement extends StatelessWidget {
  const ResizableTileElement({
    Key? key,
    required this.width,
    required this.text,
    required this.isShow,
  }) : super(key: key);

  final double textElementPadding = 8;
  final bool isShow;
  final double width;
  final String text;

  @override
  Widget build(BuildContext context) {
    if (!isShow) return Container();
    return SizedBox(
      width: width,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: textElementPadding),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Text(text),
        ),
      ),
    );
  }
}
