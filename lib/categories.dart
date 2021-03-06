import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:getxx/category_screen.dart';

import 'controller/category_controller.dart';

class Categories extends StatelessWidget {
  final CatergoryController categoryController = Get.put(CatergoryController());
  Categories({Key? key}) : super(key: key);

 
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: const Icon(
          Icons.arrow_back_ios,
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.shopping_cart,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: const [
                 Expanded(
                  child: Text(
                    'Products',
                    style:  TextStyle(
                        fontFamily: 'avenir',
                        fontSize: 32,
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
              if (categoryController.isLoading.value) {
                return const Center(child:  CircularProgressIndicator());
              } else {
                return StaggeredGridView.countBuilder(
                  crossAxisCount: 2,
                  itemCount: categoryController.productList.length,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  itemBuilder: (context, index) {
                    return CategoryScreenPage(categoryController.productList[index]);
                  },
                  staggeredTileBuilder: (index) => const StaggeredTile.fit(1),
                );
              }
            }),
          )
        ],
      ),
    );
  }
}
