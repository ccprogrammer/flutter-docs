import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';

Future toBytes({image}) async {
  var xFile = await image;
  var path = xFile.path;
  var imageBytes = await File(path).readAsBytes();
  var base64Image = base64Encode(imageBytes);
  return base64Image;
}

decode64Bytes({base64string}) {
  Uint8List decodedbytes = base64.decode(base64string);
  return decodedbytes;
}
