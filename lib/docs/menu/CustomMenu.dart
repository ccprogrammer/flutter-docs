import 'package:flutter/material.dart';

// NOTE: Screen must wrapped by safe area if not the menu padding top is not precise
class CustomMenu extends StatelessWidget {
  const CustomMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Card(
      elevation: 2,
      margin: const EdgeInsets.fromLTRB(16, 0, 16, 0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
      ),
      color: Colors.blueAccent,
      child: Container(
        width: width,
        padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
        child: GridView.builder(
          padding: EdgeInsets.zero,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisExtent: 100,
          ),
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: 6,
          itemBuilder: (BuildContext context, index) {
            // var list = MenuList.mainMenuList[index];
            return GestureDetector(
              onTap: () {},
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      width: 56,
                      height: 56,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.white,
                            Colors.white.withOpacity(0),
                          ],
                        ),
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            spreadRadius: 1,
                            blurRadius: 10,
                            offset:
                                Offset(0, 0), // x, y changes position of shadow
                          )
                        ],
                      ),

                      child: Icon(Icons.home_filled),
                      // child: Center(
                      //   child: Image.asset(
                      //     list['image_url'].toString(),
                      //     height: 38,
                      //     width: 38,
                      //   ),
                      // ),
                    ),
                  ),
                  Text(
                    'Menu Item',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
