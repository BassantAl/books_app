import 'package:books_app/core/utils/models/base_model.dart';

class SearchModel extends BaseModel {
  SearchModel({
    required super.title,
    required super.authorName,
    required super.firstPublishYear,
    required super.description,
    required super.bookKey,
    super.coverId,
  });

  factory SearchModel.fromJson(Map<String, dynamic> json) {
    final authors = json['author_name'];

    return SearchModel(
      title: json['title'] ?? 'Unknown Title',
      authorName: (authors is List && authors.isNotEmpty)
          ? authors.first.toString()
          : 'Unknown',
      coverId: json['cover_i'] is int ? json['cover_i'] : null,
      firstPublishYear: json['first_publish_year'] ?? 0,
      description: json['description']??'',
      bookKey: json['key'] ?? '',
    );
  }

  @override
  String get coverImageUrl {
    if (coverId == null) {
      return 'https://via.placeholder.com/150';
    }

    return 'https://covers.openlibrary.org/b/id/$coverId-L.jpg';
  }

  @override
  String get bookUrl {

    return 'https://openlibrary.org$bookKey';
  }
}