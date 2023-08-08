import 'char_model.dart';

class TaskModel {
  late String question;
  late String pathImage;
  late String answer;
  bool isDone = false;
  bool isFull = false;
  List<CharModel> puzzles = [];
  List<String> arrayButtons = [];

  TaskModel(
      {required this.pathImage,
      required this.question,
      required this.answer,
      this.arrayButtons = const []});
  void setWordFindChar(
    List<CharModel> puzzles,
  ) {
    this.puzzles = puzzles;
  }
}
