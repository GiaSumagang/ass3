import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../models/todo_model.dart';

// ignore: must_be_immutable
class Todocard extends StatefulWidget {
  // create varibles that a todocard will receive data for
  final int id;
  final String title;
  final int userid;
  bool completed;
  final Function insertFunction;
  final Function deleteFunction;
  Todocard(
      {required this.id,
      required this.title,
      required this.userid,
      required this.completed,
      required this.insertFunction, // it will handle the changes in checkbox
      required this.deleteFunction, // it will handle the delete button function
      Key? key})
      : super(key: key);

  @override
  _TodocardState createState() => _TodocardState();
}

class _TodocardState extends State<Todocard> {
  @override
  Widget build(BuildContext context) {
    // create a local todo
    var anotherTodo = Todo(
        id: widget.id,
        title: widget.title,
        userid: widget.userid,
        completed: widget.completed);
    //
    return Card(
      child: Row(
        children: [
          // this wil be the checkbox
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Checkbox(
              value: widget.completed,
              onChanged: (bool? value) {
                setState(() {
                  widget.completed = value!;
                });
                // change the value of anothertodo's isCheck
                anotherTodo.completed = value!;
                // insert it to database
                widget.insertFunction(anotherTodo);
              },
            ),
          ),
          // this will be the title and date
          IconButton(
            onPressed: () {
              // add delete method
              widget.deleteFunction(anotherTodo);
            },
            icon: const Icon(Icons.close),
          ),
        ],
      ),
    );
  }
}
