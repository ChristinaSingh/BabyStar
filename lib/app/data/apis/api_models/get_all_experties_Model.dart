class GetExpertiseAreaModel {
  bool? status;
  String? message;
  List<Experties>? experties;

  GetExpertiseAreaModel({this.status, this.message, this.experties});

  GetExpertiseAreaModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    if (json['experties'] != null) {
      experties = <Experties>[];
      json['experties'].forEach((v) {
        experties!.add(new Experties.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    if (this.experties != null) {
      data['experties'] = this.experties!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Experties {
  int? id;
  String? type;
  Null description;

  Experties({this.id, this.type, this.description});

  Experties.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    type = json['type'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['type'] = this.type;
    data['description'] = this.description;
    return data;
  }
}
