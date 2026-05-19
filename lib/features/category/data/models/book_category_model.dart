class BookModel {
  final String title;
  final String authorName;
  final int coverId;
  final int firstPublishYear;
  final String description;

  BookModel({
    required this.title,
    required this.authorName,
    required this.coverId,
    required this.firstPublishYear,
    required this.description,
  });

  String get coverImageUrl =>
      'https://covers.openlibrary.org/b/id/$coverId-M.jpg';

  factory BookModel.fromJson(Map<String, dynamic> json) {
    final authors = json['authors'] as List<dynamic>;
    final subjects = List<String>.from(json['subject'] ?? []);

    return BookModel(
      title: json['title'] as String,
      authorName: authors.isNotEmpty ? authors[0]['name'] as String : 'Unknown',
      coverId: json['cover_id'] as int,
      firstPublishYear: json['first_publish_year'] as int,
      description: subjects.take(3).join(', '),
    );
  }
}