/// text : "99 is the number of names of Allah, the names or attributes of God in the Qur'an."
/// number : 99
/// found : true
/// type : "trivia"

class ModelNumber {
  ModelNumber({
      String? text, 
      int? number, 
      bool? found, 
      String? type,}){
    _text = text;
    _number = number;
    _found = found;
    _type = type;
}

  ModelNumber.fromJson(dynamic json) {
    _text = json['text'];
    _number = json['number'];
    _found = json['found'];
    _type = json['type'];
  }
  String? _text;
  int? _number;
  bool? _found;
  String? _type;

  String? get text => _text;
  int? get number => _number;
  bool? get found => _found;
  String? get type => _type;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['text'] = _text;
    map['number'] = _number;
    map['found'] = _found;
    map['type'] = _type;
    return map;
  }

}