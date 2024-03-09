class Question {
  String title;
  String responseId;
  String? category;
  List<String> options;
  int valideResponse;

  Question(
      {required this.title,
      required this.responseId,
      this.category,
      required this.options,
      required this.valideResponse});
}
