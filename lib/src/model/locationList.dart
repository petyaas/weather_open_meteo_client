import 'package:json_annotation/json_annotation.dart';

part 'locationList.g.dart';

@JsonSerializable()
class LocationList {
  const LocationList({
    required this.id,
    required this.name,
    required this.latitude,
    required this.longitude,
  });

  factory LocationList.fromJson(Map<String, dynamic> json) =>
      _$LocationListFromJson(json);
  Map<String,dynamic>toJson()=>_$LocationListToJson(this);

  final int id;
  final String name;
  final double latitude;
  final double longitude;
}
