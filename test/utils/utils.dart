
import 'dart:io';

String readJson(String name){
  return File("test/json/$name").readAsStringSync();
}
