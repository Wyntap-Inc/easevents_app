import 'package:easevents_app/exports.dart';

part 'items.g.dart';

@JsonSerializable()
class Items {
  final int order;
  final String id;

  Items({
    required this.order,
    required this.id,
  });

  factory Items.fromJson(Map<String, dynamic> json) => _$ItemsFromJson(json);

  Map<String, dynamic> toJson() => _$ItemsToJson(this);
}
