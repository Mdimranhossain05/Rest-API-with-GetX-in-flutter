// To parse this JSON data, do
//
//     final products = productsFromJson(jsonString);
// @dart=2.9
import 'dart:convert';

Products productsFromJson(String str) => Products.fromJson(json.decode(str));

String productsToJson(Products data) => json.encode(data.toJson());

class Products {
  Products({
    this.id,
    this.category,
    this.facts,
  });

  int id;
  String category;
  List<Fact> facts;

  factory Products.fromJson(Map<String, dynamic> json) => Products(
    id: json["id"],
    category: json["category"],
    facts: List<Fact>.from(json["facts"].map((x) => Fact.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "category": category,
    "facts": List<dynamic>.from(facts.map((x) => x.toJson())),
  };
}

class Fact {
  Fact({
    this.id,
    this.title,
    this.description,
    this.imageUrl,
  });

  int id;
  String title;
  String description;
  String imageUrl;

  factory Fact.fromJson(Map<String, dynamic> json) => Fact(
    id: json["id"],
    title: json["title"],
    description: json["description"],
    imageUrl: json["image_url"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "title": title,
    "description": description,
    "image_url": imageUrl,
  };
}
