import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 60,
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Text(
                    'Login',
                    style: TextStyle(
                        fontFamily: 'avenir',
                        color: Colors.black87,
                        fontSize: 50,
                        fontWeight: FontWeight.w900),
                  ),
                ),
                // IconButton(
                //     icon: Icon(Icons.view_list_rounded), onPressed: () {}),
                // IconButton(icon: Icon(Icons.grid_view), onPressed: () {}),
              ],
            ),
          ),
          Expanded(child: ListView()),
          Container(
            // margin: EdgeInsets.all(5),
            height: 60.0,
            width: MediaQuery.of(context).size.width,
            child: Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  children: [
                    Text(
                      "data",
                      textAlign: TextAlign.center,
                    )
                  ],
                )),
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            ),
          ),
        ],
      ),
    );
  }
}
