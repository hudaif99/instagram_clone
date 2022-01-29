class ModelInsta {
  List<Instagram>? instagram;

  ModelInsta({this.instagram});

  ModelInsta.fromJson(Map<String, dynamic> json) {
    if (json['instagram'] != null) {
      instagram = <Instagram>[];
      json['instagram'].forEach((v) {
        instagram!.add(new Instagram.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.instagram != null) {
      data['instagram'] = this.instagram!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Instagram {
  String? profile;
  String? name;
  String? photo;
  String? comment;
  String? date;

  Instagram({this.profile, this.name, this.photo, this.comment, this.date});

  Instagram.fromJson(Map<String, dynamic> json) {
    profile = json['profile'];
    name = json['name'];
    photo = json['photo'];
    comment = json['comment'];
    date = json['date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['profile'] = this.profile;
    data['name'] = this.name;
    data['photo'] = this.photo;
    data['comment'] = this.comment;
    data['date'] = this.date;
    return data;
  }
}
