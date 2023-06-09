import 'package:json_annotation/json_annotation.dart';
part 'response_data.g.dart';

@JsonSerializable()
class User{
  int id;
  String name;
  String long;
  String lat;
  String location;
  String description;


  User({required this.id, required this.name, required this.long, required this.lat, required this.location, required this.description});

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);
}

@JsonSerializable()
class ResponseData{
  int code;
  dynamic meta;
  List<dynamic>data;
  ResponseData({required this.code, required this.meta, required this.data});
  factory ResponseData.fromJson(Map<String, dynamic> json) => _$ResponseDataFromJson(json);
  Map<String, dynamic> toJson() => _$ResponseDataToJson(this);

}