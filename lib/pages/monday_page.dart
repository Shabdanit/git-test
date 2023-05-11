import 'package:flutter/material.dart';

class MondayPage extends StatelessWidget {
  const MondayPage({Key? key, required this.name, required this.time, required this.auditorium, required this.teacher}) : super(key: key);

   final String name;
   final String time;
   final String auditorium;
   final String teacher;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(

        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 7,
              offset: Offset(0, 3),
            ),
          ],
          color: Colors.white,
        ),
        width: 100,
        height: 100,
        child: Column(
          children: [
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.only(left: 20, top: 10),
              child: Text(name,
              style: TextStyle(
                color: Colors.blue[900],
                fontSize: 20

              ),
              ),
            ),
          Container(
            alignment: Alignment.topLeft,
            padding: EdgeInsets.only(left: 20, top: 4),
            child: Text(time,
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,

              ),
            ),
          ),
            Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Icon(Icons.place,
                  color: Colors.blue,
                  size: 20,
                ),
                Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.only( top: 4),
                  child: Text(auditorium,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,

                    ),
                  ),
                ),
                SizedBox(
                  width: 55,
                ),
                Icon(Icons.person,
                color: Colors.blue,
                  size: 20,
                ),
                Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.only( top: 4),
                  child: Text(teacher,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,

                    ),
                  ),
                ),
              ],
            )

          ],
        ),
      ),
    );


  }
}
