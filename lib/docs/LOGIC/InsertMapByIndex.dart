List ExampleList = [];

InsertMapByIndex(index, data, label) {
  ExampleList.insertAll(index, [
    {
      'label': label,
      'name': data['name'],
      'value': data['value'],
    }
  ]);
}
