import 'package:flutter/material.dart';

// loop list<Map> by keys
getPreSurveyAnswer() {
  dynamic listWithKeys = [
    {
      '1': {
        'value': 'Value number one',
      },
      '2': {
        'value': 'Value number two',
      },
    }
  ];
  List<Map<String, dynamic>> remapData = [];
  listWithKeys.forEach(
    (k, v) {
      remapData.add({
        'label': v['label'],
        'value': v['value'],
      });
    },
  );
  for (var item in remapData) print(item);
}
