class BookModel {
  final String title;
  final String authorName;
  final int? coverId;
  final int firstPublishYear;
  final String description;
  final String? bookKey;

  BookModel({
    required this.title,
    required this.authorName,
    this.coverId,
    required this.firstPublishYear,
    required this.description,
    required this.bookKey,
  });

  String get coverImageUrl =>
      'https://covers.openlibrary.org/b/id/$coverId-M.jpg';

  String get bookUrl =>
      'https://openlibrary.org$bookKey';

  factory BookModel.fromJson(Map<String, dynamic> json) {
    final authors = json['authors'] as List<dynamic>? ?? [];

    final subjects =
        List<String>.from(json['subject'] ?? []);

    return BookModel(
      title: json['title'] as String,
      authorName:
          authors.isNotEmpty
              ? authors[0]['name'] as String
              : 'Unknown',
      coverId: json['cover_id'],
      firstPublishYear:
          json['first_publish_year'] ?? 0,
      description:
          subjects.take(3).join(', '),
      bookKey:
          json['key'] ?? '',
    );
  }
}