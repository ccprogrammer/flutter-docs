import 'package:flutter/material.dart';

class DropdownCommon extends StatefulWidget {
  const DropdownCommon({Key? key}) : super(key: key);

  @override
  State<DropdownCommon> createState() => _DropdownCommonState();
}

class _DropdownCommonState extends State<DropdownCommon> {
  dynamic _selectedValue;
  List _valueList = [
    {
      'value': 'first ',
    },
    {
      'value': 'two ',
    },
    {
      'value': 'three ',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(15, 0, 15, 10),
      padding: EdgeInsets.fromLTRB(15, 5, 15, 5),
      height: 55.0,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.07),
        borderRadius: BorderRadius.circular(10),
      ),
      child: DropdownButton(
        itemHeight: 70,
        elevation: 1,
        isExpanded: true,
        hint: Text(
          '--Select One--',
          style: TextStyle(
            color: Color(0xffB2B2B2),
          ),
        ),
        underline: Container(),
        icon: Icon(Icons.arrow_drop_down_rounded),
        items: _valueList.map((e) {
          int index = _valueList.indexOf(e);
          return DropdownMenuItem(
            value: index,
            child: Row(
              children: [
                Flexible(
                  child: Text(
                    e['value'],
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                ),
                SizedBox(width: 10),
              ],
            ),
          );
        }).toList(),
        value: _selectedValue,
        onChanged: (value) {
          print(value);
          setState(() {
            _selectedValue = value;
          });
        },
      ),
    );
  }
}
