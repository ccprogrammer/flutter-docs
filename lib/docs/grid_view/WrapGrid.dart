import 'package:flutter/material.dart';

class WrapGrid extends StatefulWidget {
  const WrapGrid({Key? key}) : super(key: key);

  @override
  State<WrapGrid> createState() => _WrapGridState();
}

class _WrapGridState extends State<WrapGrid> {
  bool isWishList = true;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      spacing: 16,
      runSpacing: 18,
      children: [
        for (var i = 0; i < 4; i++)
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Container(
              width: (MediaQuery.of(context).size.width - 82) /
                  2, // screen padding left 24 right 24 middle space 18 = 66 / 2 items if the items won't make grid, raise 66 to 82 or more
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/images/image_product_grid1.png',
                    height: 122,
                  ),
                  Text(
                    'Poan Chair',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      top: 24,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            '\$120',
                            maxLines: 1,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Image.asset(
                          isWishList
                              ? 'assets/icons/button_wishlist_active.png'
                              : 'assets/icons/button_wishlist.png',
                          width: 44,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
      ],
    );
  }
}
