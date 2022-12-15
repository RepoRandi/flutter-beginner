import 'package:flutter/material.dart';

class TabItem extends StatelessWidget {
  const TabItem({
    Key? key,
    this.active = true,
    this.icon,
  }) : super(key: key);

  final bool active;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border(
            bottom: BorderSide(
              color: active ? Colors.black : Colors.white,
              width: 2,
            ),
          ),
        ),
        child: Icon(
          icon,
          color: Colors.black,
        ),
      ),
    );
  }
}
