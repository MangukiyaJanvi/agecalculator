import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController txttday =
      TextEditingController(text: "${DateTime.now().day}");
  TextEditingController txttmonth =
      TextEditingController(text: "${DateTime.now().month}");
  TextEditingController txttyear =
      TextEditingController(text: "${DateTime.now().year}");
  TextEditingController txtbday = TextEditingController();
  TextEditingController txtbmonth = TextEditingController();
  TextEditingController txtbyear = TextEditingController();

  int year = 0;
  int month = 0;
  int day = 0;
  int tb = 0;
  int td = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Age Calculator"),
          centerTitle: true,
          backgroundColor: Colors.blueGrey.shade900,
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Today's Date"),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Expanded(
                        child: TextField(
                          controller: txttday,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Expanded(
                        child: TextField(
                          controller: txttmonth,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Expanded(
                        child: TextField(
                          controller: txttyear,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text("Date Of Birth"),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Expanded(
                        child: TextField(
                          controller: txtbday,
                          decoration: InputDecoration(
                            label: Text("DD"),
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Expanded(
                        child: TextField(
                          controller: txtbmonth,
                          decoration: InputDecoration(
                            label: Text("MM"),
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Expanded(
                        child: TextField(
                          controller: txtbyear,
                          decoration: InputDecoration(
                            label: Text("YY"),
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => Home(),));
                            });
                          },
                          child: Container(
                            height: 30,
                            width: 50,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                              border: Border.all(color: Colors.blue.shade900),
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              "Clear",
                              style: TextStyle(color: Colors.black87),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            String cday = txttday.text;
                            String cmonth = txttmonth.text;
                            String cyear = txttyear.text;
                            String bday = txtbday.text;
                            String bmonth = txtbmonth.text;
                            String byear = txtbyear.text;
                            int x = int.parse(cday);
                            int y = int.parse(cmonth);
                            int z = int.parse(cyear);
                            int a = int.parse(bday);
                            int b = int.parse(bmonth);
                            int c = int.parse(byear);
                            setState(() {
                              tb = 12-month;
                              td = 30-day;
                              year = z - c;
                              if (y >= b) {
                                month = y - b;
                                if (x >= a) {
                                  day = x - a;
                                } else if (a >= x) {
                                  day = a - x;
                                }
                              } else if (b >= y) {
                                month = b - y;
                              }
                            });
                          },
                          child: Container(
                            height: 30,
                            width: 50,
                            decoration: BoxDecoration(
                              color: Colors.blueGrey.shade700,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                              border: Border.all(color: Colors.blue.shade900),
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              "Calculate",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text("Present Age"),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 100,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        gradient: LinearGradient(
                            colors: [Colors.blueGrey, Colors.blue])),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Container(
                            alignment: Alignment.center,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "$year",
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text(
                                  "Year",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            alignment: Alignment.center,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "$month",
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text(
                                  "MM",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            alignment: Alignment.center,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "$day",
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text(
                                  "DD",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text("Next Birthday"),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 100,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      gradient: LinearGradient(
                          colors: [Colors.blue, Colors.blueGrey]),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Container(
                            alignment: Alignment.center,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "$tb",
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text(
                                  "MM",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            alignment: Alignment.center,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "$td",
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text(
                                  "DD",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
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
      ),
    );
  }
}
