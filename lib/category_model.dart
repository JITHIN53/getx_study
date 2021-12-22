// To parse this JSON data, do
//
//     final categoryResponseModel = categoryResponseModelFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

List<CategoryResponseModel> categoryResponseModelFromJson(String str) => List<CategoryResponseModel>.from(json.decode(str).map((x) => CategoryResponseModel.fromJson(x)));

String categoryResponseModelToJson(List<CategoryResponseModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class CategoryResponseModel {
    CategoryResponseModel({
        required this.id,
        required this.name,
        required this.nameArabic,
        required this.imageUrl,
        required this.parentId,
        required this.isActive,
        required this.isAvailableInApp,
    });

    int id;
    String name;
    String nameArabic;
    String imageUrl;
    dynamic parentId;
    int isActive;
    int isAvailableInApp;

    factory CategoryResponseModel.fromJson(Map<String, dynamic> json) => CategoryResponseModel(
        id: json["id"],
        name: json["name"],
        nameArabic: json["name_arabic"],
        imageUrl: json["image_url"],
        parentId: json["parent_id"],
        isActive: json["IS_active"],
        isAvailableInApp: json["IS_available_in_app"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "name_arabic": nameArabic,
        "image_url": imageUrl,
        "parent_id": parentId,
        "IS_active": isActive,
        "IS_available_in_app": isAvailableInApp,
    };
}
