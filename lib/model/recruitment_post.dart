// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class RecruitmentPostModel {
  String title;
  String companyName;
  String location;
  String dueDate;
  String imageUrl;
  RecruitmentPostModel({
    required this.title,
    required this.companyName,
    required this.location,
    required this.dueDate,
    required this.imageUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'title': title,
      'company_name': companyName,
      'location': location,
      'due_date': dueDate,
      'image_url': imageUrl,
    };
  }

  factory RecruitmentPostModel.fromMap(Map<String, dynamic> map) {
    return RecruitmentPostModel(
      title: map['title'] as String,
      companyName: map['company_name'] as String,
      location: map['location'] as String,
      dueDate: map['due_date'] as String,
      imageUrl: map['image_url'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory RecruitmentPostModel.fromJson(String source) =>
      RecruitmentPostModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
