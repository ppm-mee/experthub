import 'package:flutter/material.dart';

import 'package:experthub/utils/text_global.dart';

class ButtonGlobal extends StatefulWidget {
  const ButtonGlobal({
    super.key,
    required this.padding,
    required this.txt,
    required this.txtcolor,
    required this.bgcolor,
    required this.borcolor,
    required this.borwidth,
    required this.onPressed
  });

  final EdgeInsets padding;
  final String txt;
  final Color txtcolor;
  final Color bgcolor;
  final Color borcolor;
  final double borwidth;
  final Function onPressed;

  @override
  State<ButtonGlobal> createState() => _ButtonGlobalState();
}

class _ButtonGlobalState extends State<ButtonGlobal> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: widget.padding,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          widget.onPressed();
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: widget.bgcolor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
            side: BorderSide(
              color: widget.borcolor,
              width: widget.borwidth,
            ),
          ),
        ),
        child: Text(
          widget.txt,
          style: kSubheadingText.copyWith(
            color: widget.txtcolor,
          ),
        ),
      ),
    );
  }
}