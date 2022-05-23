import 'package:flutter/material.dart';
import 'package:my_documentation/docs/loading/Skeleton.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerOverview extends StatelessWidget {
  const ShimmerOverview({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[500]!,
      highlightColor: Colors.grey[300]!,
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Skeleton(
                  height: 16,
                  marginTop: 0,
                  marginleft: 18,
                  radius: 4,
                ),
              ),
              Expanded(
                flex: 2,
                child: Skeleton(
                  height: 16,
                  marginTop: 0,
                  marginRight: 18,
                  marginleft: 6,
                  radius: 4,
                ),
              ),
            ],
          ),
          Skeleton(
            width: double.infinity,
            height: 16,
            marginTop: 6,
            marginleft: 18,
            marginRight: 18,
            radius: 4,
          ),
          Skeleton(
            width: double.infinity,
            height: 16,
            marginTop: 6,
            marginleft: 18,
            marginRight: 18,
            radius: 4,
          ),
          Row(
            children: [
              Expanded(
                flex: 2,
                child: Skeleton(
                  height: 16,
                  marginTop: 6,
                  marginleft: 18,
                  radius: 4,
                ),
              ),
              Expanded(
                flex: 1,
                child: Skeleton(
                  height: 16,
                  marginTop: 6,
                  marginRight: 18,
                  marginleft: 6,
                  radius: 4,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
