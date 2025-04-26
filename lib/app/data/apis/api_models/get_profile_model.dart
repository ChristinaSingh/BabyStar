class GetProfileResponseModel {
  Data? data;
  bool? status;
  String? message;

  GetProfileResponseModel({this.data, this.status, this.message});

  GetProfileResponseModel.fromJson(Map<String, dynamic> json) {
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
  int? userId;
  String? type;
  String? firstName;
  String? lastName;
  String? title;
  String? gender;
  int? expertiseAreaId;
  String? countryCode;
  String? email;
  String? phone;
  String? profileImage;
  String? dateOfBirth;
  bool? isActive;
  bool? isApprove;
  String? subscriptionType;
  Null? subscriptionDate;
  Null? subscriptionStartDate;
  Null? subscriptionEndDate;

  Data(
      {this.userId,
        this.type,
        this.firstName,
        this.lastName,
        this.title,
        this.gender,
        this.expertiseAreaId,
        this.countryCode,
        this.email,
        this.phone,
        this.profileImage,
        this.dateOfBirth,
        this.isActive,
        this.isApprove,
        this.subscriptionType,
        this.subscriptionDate,
        this.subscriptionStartDate,
        this.subscriptionEndDate});

  Data.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    type = json['type'];
    firstName = json['firstName'];
    lastName = json['lastName'];
    title = json['title'];
    gender = json['gender'];
    expertiseAreaId = json['expertiseAreaId'];
    countryCode = json['countryCode'];
    email = json['email'];
    phone = json['phone'];
    profileImage = json['profileImage'];
    dateOfBirth = json['dateOfBirth'];
    isActive = json['isActive'];
    isApprove = json['isApprove'];
    subscriptionType = json['subscriptionType'];
    subscriptionDate = json['subscriptionDate'];
    subscriptionStartDate = json['subscriptionStartDate'];
    subscriptionEndDate = json['subscriptionEndDate'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userId'] = this.userId;
    data['type'] = this.type;
    data['firstName'] = this.firstName;
    data['lastName'] = this.lastName;
    data['title'] = this.title;
    data['gender'] = this.gender;
    data['expertiseAreaId'] = this.expertiseAreaId;
    data['countryCode'] = this.countryCode;
    data['email'] = this.email;
    data['phone'] = this.phone;
    data['profileImage'] = this.profileImage;
    data['dateOfBirth'] = this.dateOfBirth;
    data['isActive'] = this.isActive;
    data['isApprove'] = this.isApprove;
    data['subscriptionType'] = this.subscriptionType;
    data['subscriptionDate'] = this.subscriptionDate;
    data['subscriptionStartDate'] = this.subscriptionStartDate;
    data['subscriptionEndDate'] = this.subscriptionEndDate;
    return data;
  }
}
