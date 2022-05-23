import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'skeleton.dart';

class ShimmerTile extends StatelessWidget {
  const ShimmerTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[500]!,
      highlightColor: Colors.grey[300]!,
      child: Container(
        margin: const EdgeInsets.fromLTRB(18, 12, 18, 12),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Skeleton(
              height: 84,
              width: 84,
              radius: 6,
            ),
            SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Skeleton(
                    height: 16,
                    radius: 2,
                  ),
                  SizedBox(height: 8),
                  Skeleton(
                    height: 16,
                    radius: 2,
                  ),
                  SizedBox(height: 8),
                  Skeleton(
                    height: 16,
                    width: 120,
                    radius: 2,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
