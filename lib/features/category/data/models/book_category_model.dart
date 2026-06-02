import 'package:books_app/core/utils/models/base_model.dart';

class BookModel extends BaseModel {
  BookModel({required super.title, required super.authorName, required super.firstPublishYear, required super.description, required super.bookKey,super.coverId});

  @override
  String get coverImageUrl =>
      'https://covers.openlibrary.org/b/id/$coverId-M.jpg';

  @override
  String get bookUrl => 'https://openlibrary.org$bookKey';

  factory BookModel.fromJson(Map<String, dynamic> json) {
    final authors = json['authors'] as List<dynamic>? ?? [];

    final subjects = List<String>.from(json['subject'] ?? []);

    return BookModel(
      title: json['title'] as String,
      authorName: authors.isNotEmpty ? authors[0]['name'] as String : 'Unknown',
      coverId: json['cover_id'],
      firstPublishYear: json['first_publish_year'] ?? 0,
      description: subjects.take(3).join(', '),
      bookKey: json['key'] ?? '',
    );
  }
}
