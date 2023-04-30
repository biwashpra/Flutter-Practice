import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Row and col prac 2',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text('Rows and Column'),
        ),
        body: SafeArea(
          child: Expanded(
            child: Column(
              children: [
                //first row
                Expanded(
                  flex: 7,
                  child: Row(
                    children: [
                      //first row-1st
                      Expanded(
                        flex: 5,
                        child: Container(
                          color: Colors.green,
                          alignment: Alignment.center,
                          child: Text(
                            'first-1st',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                      //first row-2nd
                      Expanded(
                        flex: 5,
                        child: Column(
                          children: [
                            //first row-2nd-1st
                            Expanded(
                              flex: 3,
                              child: Container(
                                color: Colors.blue,
                                alignment: Alignment.center,
                                child: Text(
                                  'first-2nd-1st',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ),
                            //first row 2nd-2nd
                            Expanded(
                              flex: 7,
                              child: Container(
                                color: Colors.red,
                                alignment: Alignment.center,
                                child: Text(
                                  'first-2nd-2nd',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                //second row
                Expanded(
                  flex: 3,
                  child: Container(
                    color: Colors.purple,
                    alignment: Alignment.center,
                    child: Text(
                      'second',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
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
