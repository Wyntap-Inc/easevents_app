class ConsumerAccount {
  final String id;
  final String firstName;
  final String lastName;
  final String? profilePhoto;

  ConsumerAccount({
    required this.id,
    required this.firstName,
    required this.lastName,
    this.profilePhoto,
  });

  factory ConsumerAccount.fromJson(Map<String, dynamic> json) =>
      ConsumerAccount(
        id: json['_id'],
        firstName: json['firstName'],
        lastName: json['lastName'],
        profilePhoto: json['profilePhoto'],
      );

  Map<String, dynamic> toJson() => {
        '_id': id,
        'firstName': firstName,
        'lastName': lastName,
        'profilePhoto': profilePhoto,
      };
}
