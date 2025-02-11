import 'package:easevents_app/exports.dart';

part 'media.g.dart';

@JsonSerializable()
class Media {
  final String? url;
  final bool? pin;

  Media({
    this.url,
    this.pin,
  });

  factory Media.fromJson(Map<String, dynamic> json) => _$MediaFromJson(json);
  Map<String, dynamic> toJson() => _$MediaToJson(this);
}
