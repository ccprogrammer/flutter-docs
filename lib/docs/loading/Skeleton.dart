import 'package:flutter/material.dart';

class Skeleton extends StatelessWidget {
  const Skeleton(
      {Key? key,
      this.height,
      this.width,
      this.radius,
      this.marginleft,
      this.marginTop,
      this.marginRight,
      this.marginBottom})
      : super(key: key);

  final double? height,
      width,
      radius,
      marginleft,
      marginTop,
      marginRight,
      marginBottom;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      margin: EdgeInsets.fromLTRB(
          marginleft ?? 0, marginTop ?? 0, marginRight ?? 0, marginBottom ?? 0),
      decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.4),
          borderRadius: BorderRadius.all(Radius.circular(radius ?? 0))),
    );
  }
}

class CircleSkeleton extends StatelessWidget {
  const CircleSkeleton(
      {Key? key,
      this.size = 24,
      this.marginleft,
      this.marginTop,
      this.marginRight,
      this.marginBottom})
      : super(key: key);

  final double? size, marginleft, marginTop, marginRight, marginBottom;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      margin: EdgeInsets.fromLTRB(
          marginleft ?? 0, marginTop ?? 0, marginRight ?? 0, marginBottom ?? 0),
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor.withOpacity(0.4),
        shape: BoxShape.circle,
      ),
    );
  }
}

