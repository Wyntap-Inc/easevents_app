import 'package:easevents_app/exports.dart';

class Contacts {
  final String id;
  final String ordinal;
  final String type;
  final String status;
  final String provider;
  final String value;
  final String createdAt;
  final String updatedAt;

  Contacts({
    required this.id,
    required this.ordinal,
    required this.type,
    required this.status,
    required this.provider,
    required this.value,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Contacts.fromJson(Map<String, dynamic> json) {
    return Contacts(
      id: json['id'] ?? '',
      ordinal: json['ordinal'] ?? '',
      type: json['type'] ?? '',
      status: json['status'] ?? '',
      provider: json['provider'] ?? '',
      value: json['value'] ?? '',
      createdAt: json['createdAt'] ?? '',
      updatedAt: json['updatedAt'] ?? '',
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'ordinal': ordinal,
        'type': type,
        'status': status,
        'provider': provider,
        'value': value,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}
