import 'package:ee_commercre/app/app_colors.dart';
import 'package:ee_commercre/app/assets_path.dart';
import 'package:ee_commercre/feature/common/ui/controllers/main_bottom_nav_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (_, __) {
        _backToHome();
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text('Cart'),
          leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
        ),
        body: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Card(
                      child: Row(
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                            padding: EdgeInsets.all(8),
                            child: Image.asset(AssetsPath.dummyNikeShoe),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                      child: Column(
                                              children: [
                                                Text('Nike 1204HST - new shoe of 2025',
                                                maxLines: 1,
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w700,
                                                  letterSpacing: 0.6,
                                                  color: Colors.black54,
                                                  overflow: TextOverflow.ellipsis,
                                                ),)
                                              ],                    
                                      ),
                                    ),
                                    IconButton(onPressed: () {}, icon: Icon(Icons.delete_forever_outlined))
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
            _buildPriceAndAddCartSections(),
          ],
        ),
      ),
    );
  }

  Widget _buildPriceAndAddCartSections() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
    
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
        color: AppColors.themeColor.withOpacity(0.3)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text(' Total Price', style: TextStyle(fontSize: 16)),
              Text(
                '\$100',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: AppColors.themeColor,
                ),
              ),
            ],
          ),
          SizedBox(
            width: 120,
            child: ElevatedButton(
              onPressed: () {
                // Add to cart logic
              },
              child: const Text('ChekOut',
              ),
              
              
            ),
          ),
        ],
      ),
    );
  }

  void _backToHome() {
    Get.find<MainBottomNavController>().backTohome();
  }
}
