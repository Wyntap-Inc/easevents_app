import 'package:easevents_app/exports.dart';
import 'package:easevents_app/models/user/contacts.dart';

class ConsumerAccount {
  final String firstName;
  final String lastName;
  final String? profilePhoto;
  final List<Contacts> contacts;

  ConsumerAccount({
    required this.firstName,
    required this.lastName,
    this.profilePhoto,
    required this.contacts,
  });

  factory ConsumerAccount.fromJson(Map<String, dynamic> json) {
    return ConsumerAccount(
      firstName: json['firstName'] ?? '',
      lastName: json['lastName'] ?? '',
      profilePhoto: json['profilePhoto'] as String?,
      contacts: (json['contacts'] as List<dynamic>)
          .map((e) => Contacts.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() => {
        'firstName': firstName,
        'lastName': lastName,
        'profilePhoto': profilePhoto,
        'contacts': contacts.map((e) => e.toJson()).toList(),
      };
}
