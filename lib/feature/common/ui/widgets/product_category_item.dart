import 'package:ee_commercre/app/app_colors.dart';
import 'package:ee_commercre/feature/product/ui/screens/product_list_screen.dart';
import 'package:flutter/material.dart';
class Product_category_item extends StatelessWidget {
  const Product_category_item({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // todo: Navigate to product list screen

        Navigator.pushNamed(
          context,
          ProductListScreen.routeName,
          arguments: 'Computers',
        );
      },
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: AppColors.themeColor.withOpacity(0.2),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Icon(Icons.computer, color: AppColors.themeColor, size: 28),
          ),
          const SizedBox(height: 4),
          Text(
            'Computers',
            style: Theme.of(
              context,
            ).textTheme.bodyLarge?.copyWith(color: AppColors.themeColor),
          ),
        ],
      ),
    );
  }
}
