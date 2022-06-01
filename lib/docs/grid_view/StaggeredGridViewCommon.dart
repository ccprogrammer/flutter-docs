import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

// flutter_staggered_grid_view: ^0.4.1

class StaggeredGridViewCommon extends StatelessWidget {
  const StaggeredGridViewCommon({Key? key, required this.child})
      : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return StaggeredGridView.countBuilder(
      padding: EdgeInsets.fromLTRB(10, 0, 10, 0),

      // crossAxisCount: 4, ukuran horizontal total dari layar adalah 4
      crossAxisCount: 4,
      itemCount: 10,
      shrinkWrap: true,
      physics: ScrollPhysics(),
      itemBuilder: (BuildContext context, int index) {
        return this.child;
      },

      // StaggeredTile.fit(2) ukuran card horizontal adalah 2 dan ke bawahnya otomatis
      // StaggeredTile.count(2, 4), ukuran card horizontal adalah 2 dan ke bawahnya 4
      staggeredTileBuilder: (int index) => new StaggeredTile.fit(2),
      mainAxisSpacing: 4.0,
      crossAxisSpacing: 0.0,
    );
  }
}
