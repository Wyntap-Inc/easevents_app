import 'package:easevents_app/exports.dart';

part 'pricing.g.dart';

@JsonSerializable()
class Pricing {
  final String type;
  final int? securityDeposit;
  final Flat flat;
  final Fixed fixed;
  final dynamic structure;

  Pricing({
    required this.type,
    this.securityDeposit,
    required this.flat,
    required this.fixed,
    this.structure,
  });

  factory Pricing.fromJson(Map<String, dynamic> json) =>
      _$PricingFromJson(json);
  Map<String, dynamic> toJson() => _$PricingToJson(this);
}
