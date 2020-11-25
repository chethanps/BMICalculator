import 'package:flutter/cupertino.dart';

class ReUsableCard extends StatelessWidget {
  final Color color;
  final Widget cardChild;
  final Function onTapCallback;

  ReUsableCard({@required this.color, this.cardChild, this.onTapCallback});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapCallback();
      },
      child: Container(
          child: this.cardChild,
          margin: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            color: this.color,
            borderRadius: BorderRadius.circular(10.0),
      ),
      ),
    );
  }
}