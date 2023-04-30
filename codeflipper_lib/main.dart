import 'package:flutter/material.dart';
import 'package:row_column_codeflipper/styles.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter rows and columns',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Rows and Columns'),
        ),
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                flex: 4,
                child: Container(
                  color: Colors.purple,
                  alignment: Alignment.center,
                  child: Text(
                    'first',
                    style: ThemeStyles.containerText,
                  ),
                ),
              ),
              //for second row
              Expanded(
                flex: 4,
                child: Row(
                  children: [
                    // second row 1st part
                    Expanded(
                      flex: 5,
                      child: Container(
                        color: Colors.green,
                        alignment: Alignment.center,
                        child: Text(
                          'second-1st',
                          style: ThemeStyles.containerText,
                        ),
                      ),
                    ),
                    //second row 2nd part
                    Expanded(
                      flex: 5,
                      child: Column(
                        children: [
                          //second row 2nd part ko 1st
                          Expanded(
                            flex:2,
                            child: Container(
                              color: Colors.blueAccent,
                              alignment: Alignment.center,
                              child: Text(
                                'second-2nd-1st',
                                style: ThemeStyles.containerText,
                              ),
                            ),
                          ),
                          //second row 2nd part ko 2nd
                          Expanded(
                            flex:8,
                            child: Container(
                              color: Colors.pinkAccent,
                              alignment: Alignment.center,
                              child: Text(
                                'second-2nd-2nd',
                                style: ThemeStyles.containerText,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              //for third row
              Expanded(
                flex: 2,
                child: Container(
                  color: Colors.brown,
                  alignment: Alignment.center,
                  child: Text(
                    'second',
                    style: ThemeStyles.containerText,
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
