class Feedback {
  final String id;
  final String userId;
  final String exerciseId;
  final String comments;
  final double progressScore;

  Feedback({
    required this.id,
    required this.userId,
    required this.exerciseId,
    required this.comments,
    required this.progressScore,
  });

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'userId': userId,
      'exerciseId': exerciseId,
      'comments': comments,
      'progressScore': progressScore,
    };
  }

  factory Feedback.fromJson(Map<String, dynamic> json) {
    return Feedback(
      id: json['id'],
      userId: json['userId'],
      exerciseId: json['exerciseId'],
      comments: json['comments'],
      progressScore: json['progressScore'],
    );
  }
}
