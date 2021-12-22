
import 'package:get/get.dart';
import 'package:getxx/api_category.dart';

import '../category_model.dart';

class CatergoryController extends GetxController{
   var isLoading = true.obs;
  var productList = <CategoryResponseModel>[].obs;


 @override
  void onInit() {
    fetchProducts();
    super.onInit();
  }


  void fetchProducts() async {
    try {
      isLoading(true);
      var products = await APIService.categorydata();
      if (products != null) {
        productList.value = products as List<CategoryResponseModel>;
      }
    } finally {
      isLoading(false);
    }
  }
  }