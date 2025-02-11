import 'package:easevents_app/exports.dart';

part 'flat.g.dart';

@JsonSerializable()
class Flat {
  final int? price;
  final String? per;

  Flat({
    this.price,
    this.per,
  });

  factory Flat.fromJson(Map<String, dynamic> json) => _$FlatFromJson(json);
  Map<String, dynamic> toJson() => _$FlatToJson(this);
}
