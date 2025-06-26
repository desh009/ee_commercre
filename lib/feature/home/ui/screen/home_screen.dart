import 'package:ee_commercre/app/assets_path.dart';
import 'package:ee_commercre/feature/common/ui/controllers/main_bottom_nav_controller.dart';
import 'package:ee_commercre/feature/common/ui/widgets/product_card.dart';
import 'package:ee_commercre/feature/home/ui/widgets/appBAr_icon.dart';
import 'package:ee_commercre/feature/home/ui/widgets/home_carousel_slider.dart';
import 'package:ee_commercre/feature/common/ui/widgets/product_category_item.dart';
import 'package:ee_commercre/feature/common/ui/widgets/product_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              SizedBox(height: 16),
              ProductSeachBar(),
              SizedBox(height: 16),
              HomeCarouselSlider(),
              SizedBox(height: 16),
              _buildSectionHeader(
                title: 'All Categories',
                onTapSeeAll: () {
                  Get.find<MainBottomNavController>().moveToCategory();
                },
              ),
              _getCategoryList(),
              SizedBox(height: 10),
              _buildSectionHeader(title: 'Popular', onTapSeeAll: () {}),
              _getPopularList(),
              _buildSectionHeader(title: 'Special', onTapSeeAll: () {}),
              _getSpecialProduct(),
              _buildSectionHeader(title: 'New', onTapSeeAll: () {}),
              _getNewProduct(),
              const SizedBox(
                height: 8,
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _getPopularList() {


    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        spacing: 8,
        children: [
          1, 2, 3, 4
        ].map ((e) => ProductCard()).toList()
      ),
    );

  }

  Widget _getSpecialProduct() {


    return SizedBox(
      height: 185,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
        return ProductCard();
      }, separatorBuilder: (context, index) {
        return SizedBox(width: 8,);
      } ,),
    );

  }

  Widget _getNewProduct() {


    return SizedBox(
      height: 185,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return ProductCard();
        }, separatorBuilder: (context, index) {
        return SizedBox(width: 8,);
      } ,),
    );

  }


  AppBar buildAppBar() {
    return AppBar(
      title: SvgPicture.asset(AssetsPath.navAppLogoSvg),
      actions: [
        Appbar_icon(iconData: Icons.person, onTap: () {}),
        Appbar_icon(iconData: Icons.call, onTap: () {}),
        Appbar_icon(iconData: Icons.notifications, onTap: () {}),
      ],
    );
  }

  Widget _buildSectionHeader({
    required String title,
    required VoidCallback onTapSeeAll,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: Theme.of(context).textTheme.titleSmall),
        TextButton(onPressed: onTapSeeAll, child: Text('See all')),
      ],
    );
  }

  Widget _getCategoryList() {
    return SizedBox(
      height: 100,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: 10,

        itemBuilder: (context, index) {
          return Product_category_item();
        },

        separatorBuilder: (context, index) => SizedBox(width: 16),
      ),
    );
  }
}
