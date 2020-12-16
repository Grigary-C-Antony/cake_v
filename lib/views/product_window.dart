import 'package:cake_v/models/product.dart';
import 'package:cake_v/views/auth/login.dart';
// import 'package:cake_v/views/homepage.dart';
import 'package:cake_v/views/shopping_cart.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
// import 'package:get/get.dart';
// import 'package:get/instance_manager.dart';
// import 'package:cake_v/controllers/productcontroller.dart';
// import 'package:cake_v/views/product_tile.dart';

// ignore: camel_case_types
class product_window extends StatelessWidget {
  final Product product;
  const product_window(this.product);
// final ProductController productController = Get.put(ProductController());
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
        actions: [
          IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => shopping_cart()),
                );
              })
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Container(
              child: Text(
                product.name,
                style: TextStyle(
                    fontFamily: 'avenir',
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                Container(
                  height: 250,
                  child: Card(
                    child: Image.network(
                      product.imageLink,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    elevation: 5,
                    margin: EdgeInsets.all(10),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(5),
                  child: Text(
                    '₹${product.price}',
                    style: TextStyle(
                        fontFamily: 'avenir',
                        fontSize: 32,
                        fontWeight: FontWeight.w900),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    '${product.description}',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                        fontFamily: 'avenir',
                        fontSize: 18,
                        fontWeight: FontWeight.normal),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
          InkWell(
            child: Container(
              // margin: EdgeInsets.all(5),
              height: 60.0,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Text(
                  "ADD TO CART",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black87,
                      fontFamily: 'avenir',
                      fontSize: 25,
                      fontWeight: FontWeight.w900),
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Login()),
              );
            },
          ),
        ],
      ),
    );
  }
}
