class Data {
  final String token;

  Data({
    required this.token,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        token: json['token'],
      );
}
