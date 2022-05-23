import 'package:flutter/material.dart';

class ImageCircle extends StatelessWidget {
  const ImageCircle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 62,
      height: 62,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ2QaWW0n5lMGljH895ZVmNZzl0FJVmcr2wGw&usqp=CAU'),
          fit: BoxFit.cover,
        ),
        color: Colors.white,
        shape: BoxShape.circle,
      ),
    );
  }
}
