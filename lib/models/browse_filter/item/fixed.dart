import 'package:easevents_app/exports.dart';

part 'fixed.g.dart';

@JsonSerializable()
class Fixed {
  final int? price;

  Fixed({
    this.price,
  });

  factory Fixed.fromJson(Map<String, dynamic> json) => _$FixedFromJson(json);
  Map<String, dynamic> toJson() => _$FixedToJson(this);
}
