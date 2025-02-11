import 'package:easevents_app/models/browse_filter/site/items.dart';

import 'package:easevents_app/exports.dart';

part 'section.g.dart';

@JsonSerializable()
class Section {
  final int? order;
  final String id;
  final String name;
  final List<Items> items;

  Section({
    this.order,
    required this.id,
    required this.name,
    required this.items,
  });

  factory Section.fromJson(Map<String, dynamic> json) =>
      _$SectionFromJson(json);

  Map<String, dynamic> toJson() => _$SectionToJson(this);
}
