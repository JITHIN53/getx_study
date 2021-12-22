import 'package:flutter/material.dart';
import 'package:getxx/category_model.dart';

class CategoryScreenPage extends StatelessWidget {
  final CategoryResponseModel product;

  const CategoryScreenPage(this.product);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 180,
                  width: double.infinity,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Image.network(
                    "https://sta.farawlah.sa/storage/" + product.imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
            SizedBox(height: 8),
            Text(
              product.name,
              maxLines: 2,
              style:
                  TextStyle(fontFamily: 'avenir', fontWeight: FontWeight.w800),
              overflow: TextOverflow.ellipsis,
            ),
            // SizedBox(height: 8),
            // if (product.isActive != null)
            //   Container(
            //     decoration: BoxDecoration(
            //       color: Colors.green,
            //       borderRadius: BorderRadius.circular(12),
            //     ),
            //     padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
            //     child: Row(
            //       mainAxisSize: MainAxisSize.min,
            //       children: [
            //         Text(
            //           product.name.toString(),
            //           style: TextStyle(color: Colors.white),
            //         ),
            //         Icon(
            //           Icons.star,
            //           size: 16,
            //           color: Colors.white,
            //         ),
            //       ],
            //     ),
            //   ),
            SizedBox(height: 8),
            Text('\$${product.id}',
                style: TextStyle(fontSize: 32, fontFamily: 'avenir')),
          ],
        ),
      ),
    );
  }
}
