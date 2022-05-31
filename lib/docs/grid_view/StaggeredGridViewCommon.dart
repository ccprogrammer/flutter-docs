import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class StaggeredGridViewCommon extends StatelessWidget {
  const StaggeredGridViewCommon({Key? key, required this.child})
      : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return StaggeredGridView.countBuilder(
      padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
      crossAxisCount: 4,
      itemCount: 10,
      shrinkWrap: true,
      physics: ScrollPhysics(),
      itemBuilder: (BuildContext context, int index) {
        return this.child;
      },
      staggeredTileBuilder: (int index) => new StaggeredTile.fit(2),
      mainAxisSpacing: 4.0,
      crossAxisSpacing: 0.0,
    );
  }
}
