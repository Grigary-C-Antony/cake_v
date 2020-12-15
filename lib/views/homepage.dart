import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';
import 'package:cake_v/controllers/productcontroller.dart';
import 'package:cake_v/views/product_tile.dart';

class HomePage extends StatelessWidget {
  final ProductController productController = Get.put(ProductController());

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
        actions: [
          IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.black,
              ),
              onPressed: () {})
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    'Cake_v',
                    style: TextStyle(
                        fontFamily: 'avenir',
                        fontSize: 30,
                        fontWeight: FontWeight.w900),
                  ),
                ),
                // IconButton(
                //     icon: Icon(Icons.view_list_rounded), onPressed: () {}),
                // IconButton(icon: Icon(Icons.grid_view), onPressed: () {}),
              ],
            ),
          ),
          Expanded(
            child: Obx(() {
              if (productController.isLoading.value)
                return Center(child: CircularProgressIndicator());
              else
                return StaggeredGridView.countBuilder(
                  crossAxisCount: 2,
                  itemCount: productController.productList.length,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  itemBuilder: (context, index) {
                    return ProductTile(productController.productList[index]);
                  },
                  staggeredTileBuilder: (index) => StaggeredTile.fit(1),
                );
            }),
          ),
          Container(
            // margin: EdgeInsets.all(5),
            height: 60.0,
            width: MediaQuery.of(context).size.width,
            child: Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  children: [
                    IconButton(
                        icon: Icon(
                          Icons.shopping_cart,
                          color: Colors.black,
                        ),
                        onPressed: null)
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

// ignore: camel_case_types
class map {
  // ignore: non_constant_identifier_names
  var Context;
  var context;
  map(this.Context) {
    context = this.Context;
  }
  double mapw(double x) {
    double sW = MediaQuery.of(context).size.width;
    print(sW);
    return (x - 0) * (sW - 0) / (1366 - 0) + 0;
  }

  double maph(double x) {
    double sH = MediaQuery.of(context).size.height;
    print(sH);
    return (x - 0) * (sH - 0) / (695 - 0) + 0;
  }
}
