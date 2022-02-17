import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddTodoPage extends StatefulWidget {
  const AddTodoPage({Key? key}) : super(key: key);

  @override
  _AddTodoPageState createState() => _AddTodoPageState();
}

class _AddTodoPageState extends State<AddTodoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 30),
              IconButton(
                  onPressed: () {},
                  icon:
                      Icon(CupertinoIcons.back, color: Colors.black, size: 35)),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20),
                    Text('Create task',
                        style: TextStyle(
                            fontSize: 35,
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                            letterSpacing: -1)),
                    SizedBox(height: 20),
                    title('Task name'),
                    SizedBox(height: 30),
                    desc('Description'),
                    SizedBox(height: 30),
                    label('Priority'),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        chipData('High', 0xffff6d6e),
                        SizedBox(width: 15),
                        chipData('Medium', 0xffffc107),
                        SizedBox(width: 15),
                        chipData('Low', 0xff81c784)
                      ],
                    ),
                    SizedBox(height: 30),
                    label('Category'),
                    SizedBox(height: 20),
                    Column(
                      children: [
                        catData(' Personal ', 0xff4fc3f7),
                        SizedBox(height: 10),
                        catData('   Study    ', 0xffffa726),
                        SizedBox(height: 10),
                        catData('    Work    ', 0xffb868c8),
                        SizedBox(height: 10),
                        catData('Shopping', 0xff4db6ac),
                        SizedBox(height: 10),
                        catData('  Others   ', 0xff757575)
                      ],
                    ),
                    SizedBox(height: 50),
                    Row(children: [
                      SizedBox(width: 70),
                      button(),
                    ]),
                    SizedBox(height: 30),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget title(String userinput) {
  return Container(
    height: 55,
    width: 700,
    decoration: BoxDecoration(
      color: Color(0xffd6d6d6),
      borderRadius: BorderRadius.circular(15),
    ),
    child: TextFormField(
      style: TextStyle(color: Colors.black, fontSize: 17),
      decoration: InputDecoration(
        border: InputBorder.none,
        hintText: userinput,
        hintStyle: TextStyle(
          color: Color(0xff424242),
          fontSize: 17,
        ),
        contentPadding: EdgeInsets.only(
          left: 10,
          right: 20,
        ),
      ),
    ),
  );
}

Widget desc(String userinput) {
  return Container(
    height: 120,
    width: 700,
    decoration: BoxDecoration(
      color: Color(0xffd6d6d6),
      borderRadius: BorderRadius.circular(15),
    ),
    child: TextFormField(
      style: TextStyle(color: Colors.black, fontSize: 17),
      maxLines: null,
      decoration: InputDecoration(
        border: InputBorder.none,
        hintText: userinput,
        hintStyle: TextStyle(
          color: Color(0xff424242),
          fontSize: 17,
        ),
        contentPadding: EdgeInsets.only(
          left: 10,
          right: 20,
        ),
      ),
    ),
  );
}

Widget label(String label) {
  return Text(
    label,
    style: TextStyle(
        color: Colors.blue,
        fontWeight: FontWeight.w600,
        fontSize: 20,
        letterSpacing: -1),
  );
}

Widget chipData(String label, int color) {
  return Chip(
    backgroundColor: Color(color),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    label: Text(
      label,
      style: TextStyle(
        color: Colors.white,
        fontSize: 15,
        fontWeight: FontWeight.w600,
      ),
    ),
    labelPadding: EdgeInsets.symmetric(horizontal: 24, vertical: 4),
  );
}

Widget catData(String label, int color) {
  return Chip(
    backgroundColor: Color(color),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    elevation: 1.0,
    label: Text(
      label,
      style: TextStyle(
        color: Colors.white,
        fontSize: 16,
        fontWeight: FontWeight.w600,
      ),
    ),
    labelPadding: EdgeInsets.symmetric(horizontal: 120, vertical: 10),
  );
}

Widget button() {
  return Container(
    height: 55,
    width: 200,
    decoration: BoxDecoration(
        color: Colors.blue, borderRadius: BorderRadius.circular(30)),
    child: Center(
        child: Text('+  Add Task',
            style: TextStyle(
                color: Colors.white,
                fontSize: 17,
                fontWeight: FontWeight.bold))),
  );
}
