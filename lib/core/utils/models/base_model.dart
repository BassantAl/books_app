abstract class BaseModel {
  final String title;
  final String authorName;
  final int? coverId;
  final int firstPublishYear;
  final String description;
  final String? bookKey;

  BaseModel({
    required this.title,
    required this.authorName,
    this.coverId,
    required this.firstPublishYear,
    required this.description,
    required this.bookKey,
  });
  String get coverImageUrl;
  String get bookUrl;
}
