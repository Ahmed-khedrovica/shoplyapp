class Rating {
  double? rate;
  int? count;

  Rating({this.rate, this.count});

  factory Rating.fromMap(Map<String, dynamic> data) => Rating(
        rate: (data['rate'] as num?)?.toDouble(),
        count: data['count'] as int?,
      );

  Map<String, dynamic> toMap() => {
        'rate': rate,
        'count': count,
      };
}
