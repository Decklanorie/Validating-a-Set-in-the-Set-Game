bool isSet(List<Map<String, dynamic>> cards) {
  var colors = {};
  var numbers = {};
  var shades = {};
  var shapes = {};

  for (var i = 0; i < 3; i++) {
    colors[cards[i]['color'].toString()] = '#';
    numbers[cards[i]['number'].toString()] = '#';
    shades[cards[i]['shade'].toString()] = '#';
    shapes[cards[i]['shape'].toString()] = '#';
  }

  var nc = colors.keys.length;
  var nn = numbers.keys.length;
  var nsd = shades.keys.length;
  var nsp = shapes.keys.length;
  if (nc == 2 || nn == 2 || nsp == 2 || nsd == 2) {
    return false;
  }
  return true;
}
