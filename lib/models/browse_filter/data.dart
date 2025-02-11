import 'package:easevents_app/exports.dart';

part 'data.g.dart';
part 'data.freezed.dart';

@Freezed(unionKey: 'dataType')
class Data with _$Data {
  const factory Data.item({
    String? sku,
    required String name,
    String? description,
    List<Media>? media,
    @Default([]) List<String> tags,
    String? status,
    String? type,
    bool? rental,
    Pricing? pricing,
    required String createdBy,
    required String workspace,
    required String workspaceSpace,
    required String organization,
    required bool deleted,
    required String dataType,
    required String urlCode,
    required String createdAt,
    required String updatedAt,
    required String id,
  }) = _Item;

  const factory Data.site({
    required String name,
    required String title,
    required String description,
    required String logo,
    List<Covers>? covers,
    required String status,
    @Default([]) List<Section> sections,
    required String createdBy,
    required String workspace,
    required String workspaceSpace,
    required String organization,
    required bool deleted,
    required String dataType,
    required String urlCode,
    required String createdAt,
    required String updatedAt,
    required String id,
  }) = _Site;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
