import 'dart:math';
import 'package:intl/intl.dart';


String getRandomString(int length){
  const _chars = 'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
  Random _rnd = Random();
  return String.fromCharCodes(Iterable.generate(
    length, (_) => _chars.codeUnitAt(_rnd.nextInt(_chars.length))
  ));
}

DateTime getDateTimeFormat(String currentDate){
  // if(currentDate.contains('/')) {
  //   final String stringDate = currentDate.replaceAll('/', '-');
  //   return DateTime.parse(stringDate);
  // }else{
  //   final currentDate = DateFormat('yyyy-MM-dd').format(DateTime.now());
  //   return DateTime.parse(currentDate);
  // }
  if(currentDate.contains('/')) {
    final String stringDate = currentDate.replaceAll('/', '-');
    return DateTime.parse(stringDate);
  } else {
    final DateTime today = DateTime.now();
    return DateTime.parse('$currentDate-${today.month + 1}-01');
  }
}
