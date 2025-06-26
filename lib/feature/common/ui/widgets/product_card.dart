import 'package:ee_commercre/app/app_colors.dart';
import 'package:ee_commercre/app/assets_path.dart';
import 'package:ee_commercre/feature/product/ui/screens/product_details_screen.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(

      onTap: () {
        Navigator.pushNamed(context, ProductDetailsScreen.name, arguments: 'productId123');
      },
      child: Container(
        margin: EdgeInsets.all(2),
        width: 140,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
        color: Colors.white,
          boxShadow: [BoxShadow(
            color: AppColors.themeColor.withOpacity(0.2),
            offset: Offset(0.0, 0.7 ),
              blurRadius: 6.0// (x,y)
          ),
      
          ]
        ),
      
        child: Column(
          children: [
            Container(
              width: 140,
                decoration: BoxDecoration(
                  color: AppColors.themeColor.withOpacity(0.1),
                  borderRadius: BorderRadiusGeometry.only(topLeft: Radius.circular(16),
                  topRight: Radius.circular(16))
                ),
                padding: EdgeInsets.all(16),
                child: Image.asset(AssetsPath.dummyNikeShoe,
              height: 80,
            )),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text('Nike ER345t - New model of 2025', maxLines: 1,
                  style: TextStyle(
                    overflow: TextOverflow.ellipsis,
                    color: Colors.black54,
                    fontWeight: FontWeight.w600,
      
                  ),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
      
                    children: [Text('\$120',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: AppColors.themeColor
                  ),),
                  Wrap(
                    children: [
                      Icon(Icons.star,
                      size: 18,
                        color: Colors.amber,
                      ),
                      Text('4.5',
                      style: TextStyle(
                        color: Colors.grey
      
                      ),
                      ),
      
                    ],
                  ),
                    Card(
                      color: AppColors.themeColor,
                      shape:
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
      
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Icon(Icons.favorite_outline_rounded,
                        size: 18,
                          color: Colors.white,
      
                        ),
                      ),
                    )
                  ],),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
