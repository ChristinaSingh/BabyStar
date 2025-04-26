class LoginResponseModel {
  Data? data;
  bool? status;
  String? message;

  LoginResponseModel({this.data, this.status, this.message});

  LoginResponseModel.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
    status = json['status'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    data['status'] = this.status;
    data['message'] = this.message;
    return data;
  }
}

class Data {
  int? pkid;
  String? firstname;
  String? lastname;
  String? email;
  String? phone;
  String? type;
  bool? isactive;
  bool? isapprove;
  String? token;

  Data(
      {this.pkid,
        this.firstname,
        this.lastname,
        this.email,
        this.phone,
        this.type,
        this.isactive,
        this.isapprove,
        this.token});

  Data.fromJson(Map<String, dynamic> json) {
    pkid = json['pkid'];
    firstname = json['firstname'];
    lastname = json['lastname'];
    email = json['email'];
    phone = json['phone'];
    type = json['type'];
    isactive = json['isactive'];
    isapprove = json['isapprove'];
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['pkid'] = this.pkid;
    data['firstname'] = this.firstname;
    data['lastname'] = this.lastname;
    data['email'] = this.email;
    data['phone'] = this.phone;
    data['type'] = this.type;
    data['isactive'] = this.isactive;
    data['isapprove'] = this.isapprove;
    data['token'] = this.token;
    return data;
  }
}
