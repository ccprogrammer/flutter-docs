// untuk me remap list baru beserta tambahan key & value pada map

class CopyMap {
  var dummyMap = {
    'name': 'Khalid',
    'gender': 'male',
  };

  testFunction() {
    print('First dummyData: $dummyMap');

    var remap = {
      ...dummyMap,
      'religion': 'Islam',
    };

    print('Remap dummyData: $remap');
  }
}

class CopyMapLoop {
  var dummyMap = [
    {
      'name': 'Khalid',
      'gender': 'male',
    },
    {
      'name': 'Zubair',
      'gender': 'male',
    },
  ];

  var remap = [];

  testFunction() {
    print('First dummyData: $dummyMap');

    for (var item in dummyMap) {
      remap.add({
        ...item,
        'religion': 'Islam',
      });
    }

    print('Remap dummyData: $remap');
  }
}
