import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController txtDate =
  TextEditingController(text: "${DateTime.now()}");
  TextEditingController cuDate = TextEditingController();
  TextEditingController cuMonth = TextEditingController();
  TextEditingController cuYear = TextEditingController();
  int date = 00;
  int month = 00;
  int year = 0000;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.all_inclusive),
          backgroundColor: Color(0xFF203A43),
          centerTitle: true,
          title: Text("Age Calculator",
              style: TextStyle(color: Colors.white, letterSpacing: 2)),
        ),
        body: Padding(
          padding: EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Today's Date",
                  style: TextStyle(
                    letterSpacing: 2,
                    fontSize: 15,
                    color: Color(0xFF203A43),
                  ),
                ),
                SizedBox(height: 5),
                TextField(
                  controller: txtDate,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(
                          color: Color(0xFF203A43),
                          style: BorderStyle.solid,
                          width: 2),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "Date of Birth",
                  style: TextStyle(
                    letterSpacing: 2,
                    color: Color(0xFF203A43),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 120,
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        child: TextField(
                          controller: cuYear,
                          decoration: InputDecoration(
                            hintText: "DD",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(
                                  color: Color(0xFF203A43),
                                  style: BorderStyle.solid,
                                  width: 2),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 120,
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        child: TextField(
                          controller: cuMonth,
                          decoration: InputDecoration(
                            hintText: "MM",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(
                                  color: Color(0xFF203A43),
                                  style: BorderStyle.solid,
                                  width: 2),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 120,
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        child: TextField(
                          controller: cuDate,
                          decoration: InputDecoration(
                            hintText: "YYYY",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(
                                  color: Color(0xFF203A43),
                                  style: BorderStyle.solid,
                                  width: 2),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        alignment: Alignment.center,
                        child: Text("Clear",
                            style: TextStyle(
                                color: Color(0xFF203A43),
                                fontSize: 20,
                                letterSpacing: 2)),
                        height: 50,
                        width: 120,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: Color(0xFF203A43),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Container(
                        child: Text("Calculate",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                letterSpacing: 2)),
                        alignment: Alignment.center,
                        height: 50,
                        width: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(colors: [
                            Color(0xFF203A43),
                            Colors.teal.shade700,
                            //Color(0xFF203A43),
                          ]),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  "Present Age",
                  style: TextStyle(
                    letterSpacing: 2,
                    color: Color(0xFF203A43),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 100,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(colors: [
                      Color(0xFF13547A),
                      Color(0xFF203A43),
                    ]),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          // border: Border.all(color: Colors.white),
                        ),
                        child: Text(
                          "  $year\nYear",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          //border: Border.all(color: Colors.white),
                        ),
                        child: Text(
                          "  $month\nMM",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          //border: Border.all(color: Colors.white),
                        ),
                        child: Text(
                          " $date\nDD",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Next Birthday",
                  style: TextStyle(
                    letterSpacing: 2,
                    color: Color(0xFF203A43),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 100,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                      colors: [
                        Color(0xFF6BBED9),
                        Color(0xFF006ABC),
                      ],
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [

                      Container(
                        alignment: Alignment.center,
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          //border: Border.all(color: Colors.white),
                        ),
                        child: Text(
                          "  $month\nMM",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          //border: Border.all(color: Colors.white),
                        ),
                        child: Text(
                          " $date\nDD",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}