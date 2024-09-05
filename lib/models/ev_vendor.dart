class EvVendor {
  final int id;
  final String name;
  final List<String> tags;
  final String location;
  final String image;
  final String intro;

  const EvVendor({
    required this.id,
    required this.name,
    required this.tags,
    required this.location,
    required this.image,
    required this.intro,
  });

  factory EvVendor.fromJson(Map<String, dynamic> json) {
    return EvVendor(
      id: json['id'],
      name: json['name'],
      tags: json['tags'],
      location: json['location'],
      image: json['image'],
      intro: json['intro'],
    );
  }
}
