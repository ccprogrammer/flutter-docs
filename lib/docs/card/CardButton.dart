import 'package:flutter/material.dart';

class CardButton extends StatelessWidget {
  const CardButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      margin: EdgeInsets.fromLTRB(0, 24, 0, 0),
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          colorFilter: ColorFilter.mode(
            Colors.black87,
            BlendMode.darken,
          ),
          image: NetworkImage(
              'https://assets.promediateknologi.com/crop/0x0:0x0/x/photo/2022/06/28/1951951566.jpeg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {},
          child: Center(
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey.withOpacity(0.6),
              ),
              child: Icon(
                Icons.play_arrow,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
