import 'package:flutter/material.dart';

class ColorIndicator extends StatefulWidget {
  const ColorIndicator({Key? key}) : super(key: key);

  @override
  State<ColorIndicator> createState() => _ColorIndicatorState();
}

class _ColorIndicatorState extends State<ColorIndicator> {
  Color indicatorColor = Color(0xff394A54);
  double indicatorMargin =
      5; // initial left margin 5 = margin between outer indicator color and white circle indicator
  List colorList = [
    {
      'color': '0xff394A54',
    },
    {
      'color': '0xffEBA823',
    },
    {
      'color': '0xff757477',
    },
    {
      'color': '0xff29282C',
    },
    {
      'color': '0xffECE9DA',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 16, 0, 0),
      height: 50,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Container(
          margin: EdgeInsets.fromLTRB(24, 0, 4, 0),
          child: Stack(
            alignment: Alignment.centerLeft,
            children: [
              Row(
                children: colorList.map((e) {
                  int index = colorList.indexOf(e);
                  Color color = Color(int.parse(e['color']));

                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        indicatorColor = color;
                        indicatorMargin = 5 +
                            (index *
                                70); // 70 = outer indicator width 50 + margin in each indicator 20
                      });
                    },
                    child: Container(
                      width: 50,
                      height: 50,
                      margin: EdgeInsets.only(right: 20),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: color,
                      ),
                    ),
                  );
                }).toList(),
              ),
              AnimatedContainer(
                duration: Duration(milliseconds: 200),
                width: 40,
                height: 40,
                margin: EdgeInsets.only(left: indicatorMargin),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: indicatorColor,
                  border: Border.all(
                    color: Colors.white,
                    width: 3,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// this one with constructor
class ColorIndicatorProps extends StatefulWidget {
  const ColorIndicatorProps({
    Key? key,
    required this.onChangeListener,
    required this.colorList,
    required this.indicatorMargin,
    required this.indicatorColor,
  }) : super(key: key);

  final List colorList;
  final Function onChangeListener;
  final double indicatorMargin;
  final Color indicatorColor;

  @override
  State<ColorIndicatorProps> createState() => _ColorIndicatorPropsState();
}

class _ColorIndicatorPropsState extends State<ColorIndicatorProps> {
  /* this is how you call it
     ColorIndicatorProps(
      colorList: productList,
      indicatorColor: indicatorColor,
      indicatorMargin: indicatorMargin,
      onChangeListener: (color, _indicatorMargin, index) {
        setState(() {
          currentIndex = index;
          indicatorColor = color;
          indicatorMargin = _indicatorMargin;
        });
      },
    ),

  #the example of data needed for the constructor

  int currentIndex = 0;
  Color indicatorColor = Color(0xff394A54);
  double indicatorMargin = 5;
  List productList = [
    {
      'color': '0xff394A54',
    },
    {
      'color': '0xffEBA823',
    },
  ];
*/

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 16, 0, 0),
      height: 50,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Container(
          margin: EdgeInsets.fromLTRB(24, 0, 4, 0),
          child: Stack(
            alignment: Alignment.centerLeft,
            children: [
              Row(
                children: widget.colorList.map((e) {
                  int index = widget.colorList.indexOf(e);
                  double indicatorMargin =
                      5 + (widget.colorList.indexOf(e) * 70);
                  Color color = Color(int.parse(e['color']));

                  return GestureDetector(
                    onTap: () {
                      widget.onChangeListener(color, indicatorMargin, index);
                      setState(() {});
                    },
                    child: Container(
                      width: 50,
                      height: 50,
                      margin: EdgeInsets.only(right: 20),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: color,
                      ),
                    ),
                  );
                }).toList(),
              ),
              AnimatedContainer(
                duration: Duration(milliseconds: 200),
                width: 40,
                height: 40,
                margin: EdgeInsets.only(left: widget.indicatorMargin),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: widget.indicatorColor,
                  border: Border.all(
                    color: Colors.white,
                    width: 3,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
