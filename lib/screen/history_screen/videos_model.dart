import 'dart:convert';

ProductVideo productVideoFromJson(String str) => ProductVideo.fromJson(json.decode(str));

String productVideoToJson(ProductVideo data) => json.encode(data.toJson());

class ProductVideo {
  int? status;
  String? message;
  List<VideoModel>? data;
  List<dynamic>? validationMessage;
  dynamic errorMessage;

  ProductVideo({
    this.status,
    this.message,
    this.data,
    this.validationMessage,
    this.errorMessage,
  });

  factory ProductVideo.fromJson(Map<String, dynamic> json) => ProductVideo(
        status: json["Status"],
        message: json["Message"],
        data: json["Data"] == null ? [] : List<VideoModel>.from(json["Data"]!.map((x) => VideoModel.fromJson(x))),
        validationMessage: json["ValidationMessage"] == null ? [] : List<dynamic>.from(json["ValidationMessage"]!.map((x) => x)),
        errorMessage: json["ErrorMessage"],
      );

  Map<String, dynamic> toJson() => {
        "Status": status,
        "Message": message,
        "Data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toJson())),
        "ValidationMessage": validationMessage == null ? [] : List<dynamic>.from(validationMessage!.map((x) => x)),
        "ErrorMessage": errorMessage,
      };
}

class VideoModel {
  String? productName;
  int? id;
  dynamic fullDescription;
  dynamic sku;
  dynamic shortDescription;
  bool? publish;
  bool? showOnHomePage;

  bool? displayOnHomePage;
  dynamic adminComment;
  bool? markAsNew;
  List<String>? productVideoUrl;
  DefaultPictureModel? defaultPictureModel;
  bool? like;

  VideoModel({
    this.productName,
    this.id,
    this.fullDescription,
    this.sku,
    this.shortDescription,
    this.publish,
    this.showOnHomePage,
    this.displayOnHomePage,
    this.adminComment,
    this.markAsNew,
    this.productVideoUrl,
    this.defaultPictureModel,
    this.like,
  });

  factory VideoModel.fromJson(Map<String, dynamic> json) => VideoModel(
        productName: json["ProductName"],
        id: json["Id"],
        fullDescription: json["FullDescription"],
        sku: json["SKU"],
        shortDescription: json["ShortDescription"],
        publish: json["Publish"],
        showOnHomePage: json["ShowOnHomePage"],
        displayOnHomePage: json["DisplayOnHomePage"],
        adminComment: json["AdminComment"],
        markAsNew: json["MarkAsNew"],
        productVideoUrl: json["ProductVideoURL"] == null ? [] : List<String>.from(json["ProductVideoURL"]!.map((x) => x)),
        defaultPictureModel: json["DefaultPictureModel"] == null ? null : DefaultPictureModel.fromJson(json["DefaultPictureModel"]),
        like: json["Like"] ?? false,
      );

  Map<String, dynamic> toJson() => {
        "ProductName": productName,
        "Id": id,
        "FullDescription": fullDescription,
        "SKU": sku,
        "ShortDescription": shortDescription,
        "Publish": publish,
        "ShowOnHomePage": showOnHomePage,
        "DisplayOnHomePage": displayOnHomePage,
        "AdminComment": adminComment,
        "MarkAsNew": markAsNew,
        "ProductVideoURL": productVideoUrl == null ? [] : List<dynamic>.from(productVideoUrl!.map((x) => x)),
        "DefaultPictureModel": defaultPictureModel?.toJson(),
        "like": like,
      };
}

class DefaultPictureModel {
  String? imageUrl;
  dynamic thumbImageUrl;
  String? fullSizeImageUrl;
  String? title;
  String? alternateText;
  CustomProperties? customProperties;

  DefaultPictureModel({
    this.imageUrl,
    this.thumbImageUrl,
    this.fullSizeImageUrl,
    this.title,
    this.alternateText,
    this.customProperties,
  });

  factory DefaultPictureModel.fromJson(Map<String, dynamic> json) => DefaultPictureModel(
        imageUrl: json["ImageUrl"],
        thumbImageUrl: json["ThumbImageUrl"],
        fullSizeImageUrl: json["FullSizeImageUrl"],
        title: json["Title"],
        alternateText: json["AlternateText"],
        customProperties: json["CustomProperties"] == null ? null : CustomProperties.fromJson(json["CustomProperties"]),
      );

  Map<String, dynamic> toJson() => {
        "ImageUrl": imageUrl,
        "ThumbImageUrl": thumbImageUrl,
        "FullSizeImageUrl": fullSizeImageUrl,
        "Title": title,
        "AlternateText": alternateText,
        "CustomProperties": customProperties?.toJson(),
      };
}

class CustomProperties {
  CustomProperties();

  factory CustomProperties.fromJson(Map<String, dynamic> json) => CustomProperties();

  Map<String, dynamic> toJson() => {};
}
