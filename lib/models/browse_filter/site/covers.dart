import 'package:easevents_app/exports.dart';

part 'covers.g.dart';

@JsonSerializable()
class Covers {
  String? url;
  bool? pin;

  Covers({
    this.url,
    this.pin,
  });

  factory Covers.fromJson(Map<String, dynamic> json) => _$CoversFromJson(json);

  Map<String, dynamic> toJson() => _$CoversToJson(this);
}
