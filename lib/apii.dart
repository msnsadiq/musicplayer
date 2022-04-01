import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:musicplayer/ModelNumber.dart';

apiGet({dynamic numberr}) async{
 final collection = await http.get(Uri.parse('http://numbersapi.com/$numberr?json'));
final datas = json.decode(collection.body) ;
 final items = ModelNumber.fromJson(datas);
 return items;
}