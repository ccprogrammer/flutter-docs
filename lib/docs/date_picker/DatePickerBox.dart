import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

// intl: ^0.17.0

class DatePickerBox extends StatefulWidget {
  const DatePickerBox({Key? key}) : super(key: key);

  @override
  State<DatePickerBox> createState() => _DatePickerBoxState();
}

class _DatePickerBoxState extends State<DatePickerBox> {
  TextEditingController dateInput = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(16, 0, 16, 0),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 1.0,
            color: Colors.black54,
          ),
        ),
      ),
      child: TextField(
        controller: dateInput,
        //editing controller of this TextField
        decoration: InputDecoration(
          icon: Icon(
            Icons.calendar_today,
            color: Colors.blueAccent,
          ), //icon of text field
          labelText: "Enter Date", //label text of field
          border: InputBorder.none,
        ),
        readOnly: true,
        //set it true, so that user will not able to edit text
        onTap: () async {
          DateTime? pickedDate = await showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime(1950),
              //DateTime.now() - not to allow to choose before today.
              lastDate: DateTime(2100));

          if (pickedDate != null) {
            print(
                pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
            String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
            print(
                formattedDate); //formatted date output using intl package =>  2021-03-16
            setState(() {
              dateInput.text =
                  formattedDate; //set output date to TextField value.
            });
          } else {}
        },
      ),
    );
  }
}
