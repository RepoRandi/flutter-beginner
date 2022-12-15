import 'package:flutter/material.dart';

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: 100,
          height: 100,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFFF92B7F),
                Color(0xFFF58524),
              ],
            ),
            shape: BoxShape.circle,
          ),
        ),
        Container(
          width: 95,
          height: 95,
          decoration: BoxDecoration(
            color: Colors.grey[200],
            shape: BoxShape.circle,
            border: Border.all(
              color: Colors.white,
              width: 3,
            ),
            image: const DecorationImage(
              image: NetworkImage("https://picsum.photos/200"),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}
