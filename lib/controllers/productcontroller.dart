import 'package:get/state_manager.dart';
import 'package:cake_v/models/product.dart';
import 'package:cake_v/services/remote_services.dart';

class ProductController extends GetxController {
  var isLoading = true.obs;
  var productList = List<Product>().obs;

  @override
  void onInit() {
    fetchProducts();
    super.onInit();
  }

  void fetchProducts() async {
    try {
      isLoading(true);
      var products = await RemoteServices.fetchProducts();
      if (products != null) {
        // ignore: deprecated_member_use

        // ignore: deprecated_member_use
        // ignore: invalid_use_of_protected_member
        productList.assignAll(products);
        // productList.value = products;
      }
    } finally {
      isLoading(false);
    }
  }
}
