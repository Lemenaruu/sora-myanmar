

class BlogApiResponse {
  bool? success;
  Data? data;
  String? message;
  int? status;

  BlogApiResponse({this.success, this.data, this.message, this.status});

  BlogApiResponse.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
    message = json['message'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    data['message'] = this.message;
    data['status'] = this.status;
    return data;
  }
}

class Data {
  List<Companies>? companies;
  Pagination? pagination;

  Data({this.companies, this.pagination});

  Data.fromJson(Map<String, dynamic> json) {
    if (json['companies'] != null) {
      companies = <Companies>[];
      json['companies'].forEach((v) {
        companies!.add(new Companies.fromJson(v));
      });
    }
    pagination = json['pagination'] != null
        ? new Pagination.fromJson(json['pagination'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.companies != null) {
      data['companies'] = this.companies!.map((v) => v.toJson()).toList();
    }
    if (this.pagination != null) {
      data['pagination'] = this.pagination!.toJson();
    }
    return data;
  }
}

class Companies {
  String? guid;
  String? name;
  String? description;
  String? logoUrl;
  String? aboutUs;
  String? type;
  int? isActive;
  String? createdBy;
  List<Review>? review;
  List<Service>? service;

  Companies(
      {this.guid,
      this.name,
      this.description,
      this.logoUrl,
      this.aboutUs,
      this.type,
      this.isActive,
      this.createdBy,
      this.review,
      this.service});

  Companies.fromJson(Map<String, dynamic> json) {
    guid = json['guid'];
    name = json['name'];
    description = json['description'];
    logoUrl = json['logo_url'];
    aboutUs = json['about_us'];
    type = json['type'];
    isActive = json['is_active'];
    createdBy = json['created_by'];
    if (json['review'] != null) {
      review = <Review>[];
      json['review'].forEach((v) {
        review!.add(new Review.fromJson(v));
      });
    }
    if (json['service'] != null) {
      service = <Service>[];
      json['service'].forEach((v) {
        service!.add(new Service.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['guid'] = this.guid;
    data['name'] = this.name;
    data['description'] = this.description;
    data['logo_url'] = this.logoUrl;
    data['about_us'] = this.aboutUs;
    data['type'] = this.type;
    data['is_active'] = this.isActive;
    data['created_by'] = this.createdBy;
    if (this.review != null) {
      data['review'] = this.review!.map((v) => v.toJson()).toList();
    }
    if (this.service != null) {
      data['service'] = this.service!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Review {
  String? guid;
  String? userId;
  String? companyId;
  dynamic? serviceId;
  int? rating;
  String? description;
  int? isActive;
  String? createdBy;
  String? createdWhen;
  dynamic? updatedBy;
  dynamic? updatedWhen;

  Review(
      {this.guid,
      this.userId,
      this.companyId,
      this.serviceId,
      this.rating,
      this.description,
      this.isActive,
      this.createdBy,
      this.createdWhen,
      this.updatedBy,
      this.updatedWhen});

  Review.fromJson(Map<String, dynamic> json) {
    guid = json['guid'];
    userId = json['user_id'];
    companyId = json['company_id'];
    serviceId = json['service_id'];
    rating = json['rating'];
    description = json['description'];
    isActive = json['is_active'];
    createdBy = json['created_by'];
    createdWhen = json['created_when'];
    updatedBy = json['updated_by'];
    updatedWhen = json['updated_when'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['guid'] = this.guid;
    data['user_id'] = this.userId;
    data['company_id'] = this.companyId;
    data['service_id'] = this.serviceId;
    data['rating'] = this.rating;
    data['description'] = this.description;
    data['is_active'] = this.isActive;
    data['created_by'] = this.createdBy;
    data['created_when'] = this.createdWhen;
    data['updated_by'] = this.updatedBy;
    data['updated_when'] = this.updatedWhen;
    return data;
  }
}

class Service {
  String? guid;
  String? name;
  String? companyId;
  String? type;
  String? logoUrl;
  String? description;
  int? isActive;
  String? createdBy;
  dynamic createdAt;
  dynamic updatedBy;
  dynamic updatedAt;
  String? salary;
  String? price;
  dynamic dataLimit;

  Service(
      {this.guid,
      this.name,
      this.companyId,
      this.type,
      this.logoUrl,
      this.description,
      this.isActive,
      this.createdBy,
      this.createdAt,
      this.updatedBy,
      this.updatedAt,
      this.salary,
      this.price,
      this.dataLimit});

  Service.fromJson(Map<String, dynamic> json) {
    guid = json['guid'];
    name = json['name'];
    companyId = json['company_id'];
    type = json['type'];
    logoUrl = json['logo_url'];
    description = json['description'];
    isActive = json['is_active'];
    createdBy = json['created_by'];
    createdAt = json['created_at'];
    updatedBy = json['updated_by'];
    updatedAt = json['updated_at'];
    salary = json['salary'];
    price = json['price'];
    dataLimit = json['data_limit'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['guid'] = this.guid;
    data['name'] = this.name;
    data['company_id'] = this.companyId;
    data['type'] = this.type;
    data['logo_url'] = this.logoUrl;
    data['description'] = this.description;
    data['is_active'] = this.isActive;
    data['created_by'] = this.createdBy;
    data['created_at'] = this.createdAt;
    data['updated_by'] = this.updatedBy;
    data['updated_at'] = this.updatedAt;
    data['salary'] = this.salary;
    data['price'] = this.price;
    data['data_limit'] = this.dataLimit;
    return data;
  }
}

class Pagination {
  int? currentPage;
  String? firstPageUrl;
  int? lastPage;
  String? lastPageUrl;
  dynamic nextPageUrl;
  String? path;
  String? perPage;
  dynamic prevPageUrl;
  int? total;

  Pagination(
      {this.currentPage,
      this.firstPageUrl,
      this.lastPage,
      this.lastPageUrl,
      this.nextPageUrl,
      this.path,
      this.perPage,
      this.prevPageUrl,
      this.total});

  Pagination.fromJson(Map<String, dynamic> json) {
    currentPage = json['current_page'];
    firstPageUrl = json['first_page_url'];
    lastPage = json['last_page'];
    lastPageUrl = json['last_page_url'];
    nextPageUrl = json['next_page_url'];
    path = json['path'];
    perPage = json['per_page'];
    prevPageUrl = json['prev_page_url'];
    total = json['total'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['current_page'] = this.currentPage;
    data['first_page_url'] = this.firstPageUrl;
    data['last_page'] = this.lastPage;
    data['last_page_url'] = this.lastPageUrl;
    data['next_page_url'] = this.nextPageUrl;
    data['path'] = this.path;
    data['per_page'] = this.perPage;
    data['prev_page_url'] = this.prevPageUrl;
    data['total'] = this.total;
    return data;
  }
}