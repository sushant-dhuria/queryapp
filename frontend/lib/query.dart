class Query {
  String name;
  String q;
  String category;
  Query(this.name, this.q, this.category);
  Query.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    q = json['query'];
    category = json['category'];
  }
}
