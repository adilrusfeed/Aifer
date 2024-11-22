

// import 'dart:convert';

// List<Photo> photoFromJson(String str) =>
//     List<Photo>.from(json.decode(str).map((x) => Photo.fromJson(x)));

// String photoToJson(List<Photo> data) =>
//     json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Photo {
  String? id;
  String? slug;
  DateTime? createdAt;
  DateTime? updatedAt;
  dynamic promotedAt;
  int? width;
  int? height;
  String? color;
  String? blurHash;
  String? description;
  String? altDescription;
  List<dynamic>? breadcrumbs;
  Urls? urls;
  Links? links;
  int? likes;
  bool? likedByUser;
  List<dynamic>? currentUserCollections;
  
  Photo({
     this.id,
     this.slug,
    
     this.createdAt,
     this.updatedAt,
     this.promotedAt,
     this.width,
     this.height,
     this.color,
     this.blurHash,
     this.description,
     this.altDescription,
     this.breadcrumbs,
     this.urls,
     this.links,
     this.likes,
     this.likedByUser,
     this.currentUserCollections,
 
  });

  factory Photo.fromJson(Map<String, dynamic> json) => Photo(
        id: json["id"],
        slug: json["slug"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        promotedAt: json["promoted_at"],
        width: json["width"],
        height: json["height"],
        color: json["color"],
        blurHash: json["blur_hash"],
        description: json["description"],
        altDescription: json["alt_description"],
        breadcrumbs: List<dynamic>.from(json["breadcrumbs"].map((x) => x)),
        urls: Urls.fromJson(json["urls"]),
        links: Links.fromJson(json["links"]),
        likes: json["likes"],
        likedByUser: json["liked_by_user"],
        currentUserCollections:
            List<dynamic>.from(json["current_user_collections"].map((x) => x)),
       
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "slug": slug,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "promoted_at": promotedAt,
        "width": width,
        "height": height,
        "color": color,
        "blur_hash": blurHash,
        "description": description,
        "alt_description": altDescription,
        "breadcrumbs": List<dynamic>.from(breadcrumbs!.map((x) => x)),
        "urls": urls?.toJson(),
        "links": links?.toJson(),
        "likes": likes,
        "liked_by_user": likedByUser,
        "current_user_collections":
            List<dynamic>.from(currentUserCollections!.map((x) => x)),
      };
}


class Links {
  String self;
  String html;
  String download;
  String downloadLocation;

  Links({
    required this.self,
    required this.html,
    required this.download,
    required this.downloadLocation,
  });

  factory Links.fromJson(Map<String, dynamic> json) => Links(
        self: json["self"],
        html: json["html"],
        download: json["download"],
        downloadLocation: json["download_location"],
      );

  Map<String, dynamic> toJson() => {
        "self": self,
        "html": html,
        "download": download,
        "download_location": downloadLocation,
      };
}

class Urls {
  String raw;
  String full;
  String regular;
  String small;
  String thumb;
  String smallS3;

  Urls({
    required this.raw,
    required this.full,
    required this.regular,
    required this.small,
    required this.thumb,
    required this.smallS3,
  });

  factory Urls.fromJson(Map<String, dynamic> json) => Urls(
        raw: json["raw"],
        full: json["full"],
        regular: json["regular"],
        small: json["small"],
        thumb: json["thumb"],
        smallS3: json["small_s3"],
      );

  Map<String, dynamic> toJson() => {
        "raw": raw,
        "full": full,
        "regular": regular,
        "small": small,
        "thumb": thumb,
        "small_s3": smallS3,
      };
}

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
