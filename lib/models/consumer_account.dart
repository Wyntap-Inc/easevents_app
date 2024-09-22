class ConsumerAccount {
  final String firstName;
  final String lastName;
  final String? profilePhoto;

  ConsumerAccount({
    required this.firstName,
    required this.lastName,
    this.profilePhoto,
  });

  factory ConsumerAccount.fromJson(Map<String, dynamic> json) =>
      ConsumerAccount(
        firstName: json['firstName'],
        lastName: json['lastName'],
        profilePhoto: json['profilePhoto'],
      );

  Map<String, dynamic> toJson() => {
        'firstName': firstName,
        'lastName': lastName,
        'profilePhoto': profilePhoto,
      };
}
