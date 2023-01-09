splitString(str) {
  var arrString = str.split('/');
  return {"type": arrString[0], "id": arrString[1]};
}
