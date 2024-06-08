class EVProvider {
  final int id;
  final String name;
  final String services;
  final String location;
  final String image;
  final String intro;

  const EVProvider({
    required this.id,
    required this.name,
    required this.services,
    required this.location,
    required this.image,
    required this.intro,
  });

  factory EVProvider.fromJson(Map<String, dynamic> json) {
    return EVProvider(
      id: json['id'],
      name: json['name'],
      services: json['services'],
      location: json['location'],
      image: json['image'],
      intro: json['intro'],
    );
  }
}
