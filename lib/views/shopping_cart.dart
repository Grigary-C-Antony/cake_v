import 'package:flutter/material.dart';

// ignore: camel_case_types
class shopping_cart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Column(children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Container(
              child: Text(
                "cart",
                style: TextStyle(
                    fontFamily: 'avenir',
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
          ListView(
            children: [
              Container(
                  height: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  )),
            ],
          ),
          Container(
            // margin: EdgeInsets.all(5),
            height: 60.0,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                "CHECK OUT",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'avenir',
                    fontSize: 25,
                    fontWeight: FontWeight.w900),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.blue[500],
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            ),
          ),
        ]));
  }
}
