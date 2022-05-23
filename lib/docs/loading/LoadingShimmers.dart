import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class LoadingShimmers extends StatelessWidget {
  const LoadingShimmers({Key? key, required this.child}) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[500]!,
      highlightColor: Colors.grey[300]!,
      child: this.child,
    );
  }
}
