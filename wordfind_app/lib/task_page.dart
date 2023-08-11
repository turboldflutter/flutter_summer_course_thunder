import 'package:flutter/material.dart';
import 'package:wordfind_app/task_widget.dart';

import 'data/questions.dart';
import 'models/task_model.dart';
import 'models/user_model.dart';

class TaskPage extends StatefulWidget {
  final User user;
  TaskPage(this.user, {super.key});

  @override
  State<TaskPage> createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  GlobalKey<TaskWidgetState> globalKey = GlobalKey();

  late List<TaskModel> listQuestions;
  late User user;

  // Size get size => null;
  @override
  void initState() {
    super.initState();
    listQuestions = questions;
    user = widget.user;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFBF5F2),
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Image.asset('assets/arrow_back.png')),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          widget.user.userName,
          style: TextStyle(fontSize: 24, color: Color(0xFFE86B02)),
        ),
      ),
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/back2.png'), fit: BoxFit.cover),
          ),
          child: Column(
            children: [
              Expanded(child: LayoutBuilder(
                builder: (context, constraints) {
                  return TaskWidget(
                      constraints.biggest,
                      listQuestions
                          .map((question) => question.clone())
                          .toList(),
                      key: globalKey);
                },
              )),
              Container(
                width: double.maxFinite,
                padding: EdgeInsets.only(bottom: 10.0),
                color: Colors.white,
                child: Center(
                  child: Container(
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: (BorderRadius.circular(10)),
                      gradient: LinearGradient(
                          colors: [Color(0xFFE86B02), Color(0xFFFA9541)],
                          begin: Alignment.centerLeft,
                          end: Alignment.bottomRight),
                    ),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25)),
                        ),
                        onPressed: () {
                          globalKey.currentState?.generatePuzzle(
                            loop: listQuestions
                                .map((question) => question.clone())
                                .toList(),
                          );
                        },
                        child: Text(
                          'Reload',
                          style: TextStyle(
                              fontFamily: 'Nunito',
                              fontSize: 24,
                              fontWeight: FontWeight.w600),
                        )),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
