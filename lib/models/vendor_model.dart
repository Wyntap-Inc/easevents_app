class Vendor{
  final String? id;
  final String? name;
  final String? title;
  final String desc;
  final String? logo;

  const Vendor({
    required this.id, 
    required this.name, 
    required this.title, 
    required this.desc, 
    required this.logo
  });

  factory Vendor.fromJson(Map<String, dynamic> json){
    return Vendor(
      id: json['_id'],
      name: json['name'],
      title: json['title'],
      desc: json['description'],
      logo: json['logo']
    );
  }
}

