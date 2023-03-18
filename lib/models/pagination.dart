// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';






class Pagination {
  int? currentPage;
  String? firstPageUrl;
  int? lastPage;
  String? lastPageUrl;
  String? nextPageUrl;
  String? path;
  String? perPage;
  String? prevPageUrl;
  String? total;
  Pagination({
    this.currentPage,
    this.firstPageUrl,
    this.lastPage,
    this.lastPageUrl,
    this.nextPageUrl,
    this.path,
    this.perPage,
    this.prevPageUrl,
    this.total,
  });


  Pagination copyWith({
    int? currentPage,
    String? firstPageUrl,
    int? lastPage,
    String? lastPageUrl,
    String? nextPageUrl,
    String? path,
    String? perPage,
    String? prevPageUrl,
    String? total,
  }) {
    return Pagination(
      currentPage: currentPage ?? this.currentPage,
      firstPageUrl: firstPageUrl ?? this.firstPageUrl,
      lastPage: lastPage ?? this.lastPage,
      lastPageUrl: lastPageUrl ?? this.lastPageUrl,
      nextPageUrl: nextPageUrl ?? this.nextPageUrl,
      path: path ?? this.path,
      perPage: perPage ?? this.perPage,
      prevPageUrl: prevPageUrl ?? this.prevPageUrl,
      total: total ?? this.total,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'currentPage': currentPage,
      'firstPageUrl': firstPageUrl,
      'lastPage': lastPage,
      'lastPageUrl': lastPageUrl,
      'nextPageUrl': nextPageUrl,
      'path': path,
      'perPage': perPage,
      'prevPageUrl': prevPageUrl,
      'total': total,
    };
  }

  factory Pagination.fromMap(Map<String, dynamic> map) {
    return Pagination(
      currentPage: map['currentPage'] != null ? map['currentPage'] as int : null,
      firstPageUrl: map['firstPageUrl'] != null ? map['firstPageUrl'] as String : null,
      lastPage: map['lastPage'] != null ? map['lastPage'] as int : null,
      lastPageUrl: map['lastPageUrl'] != null ? map['lastPageUrl'] as String : null,
      nextPageUrl: map['nextPageUrl'] != null ? map['nextPageUrl'] as String : null,
      path: map['path'] != null ? map['path'] as String : null,
      perPage: map['perPage'] != null ? map['perPage'] as String : null,
      prevPageUrl: map['prevPageUrl'] != null ? map['prevPageUrl'] as String : null,
      total: map['total'] != null ? map['total'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Pagination.fromJson(String source) => Pagination.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Pagination(currentPage: $currentPage, firstPageUrl: $firstPageUrl, lastPage: $lastPage, lastPageUrl: $lastPageUrl, nextPageUrl: $nextPageUrl, path: $path, perPage: $perPage, prevPageUrl: $prevPageUrl, total: $total)';
  }

  @override
  bool operator ==(covariant Pagination other) {
    if (identical(this, other)) return true;
  
    return 
      other.currentPage == currentPage &&
      other.firstPageUrl == firstPageUrl &&
      other.lastPage == lastPage &&
      other.lastPageUrl == lastPageUrl &&
      other.nextPageUrl == nextPageUrl &&
      other.path == path &&
      other.perPage == perPage &&
      other.prevPageUrl == prevPageUrl &&
      other.total == total;
  }

  @override
  int get hashCode {
    return currentPage.hashCode ^
      firstPageUrl.hashCode ^
      lastPage.hashCode ^
      lastPageUrl.hashCode ^
      nextPageUrl.hashCode ^
      path.hashCode ^
      perPage.hashCode ^
      prevPageUrl.hashCode ^
      total.hashCode;
  }
}
