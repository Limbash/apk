import 'package:apk/components/my_current_location.dart';
import 'package:apk/components/my_description_box.dart';
import 'package:apk/components/my_drawer.dart';
import 'package:apk/components/my_food_tile.dart';
import 'package:apk/components/my_sliver_app_bar.dart';
import 'package:apk/components/my_tab_bar.dart';
import 'package:apk/models/food.dart';
import 'package:apk/models/restaurant.dart';
import 'package:apk/pages/food_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  // tab bar controller
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(length: FoodCategory.values.length, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
  }

  // sort out and return a list of items that belongs to a specific category
  List<Food> _filterMenuByCategory(FoodCategory category, List<Food> fullMenu) {
    return fullMenu.where((food) => food.category == category).toList();
  }

  // return list of food in given category
  List<Widget> getFoodInThisCategory(List<Food> fullMenu) {
    return FoodCategory.values.map((category) {
      List<Food> categoryMenu = _filterMenuByCategory(category, fullMenu);
      return ListView.builder(
        itemCount: categoryMenu.length,
        physics: NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          // get individual food
          final food = categoryMenu[index];

          // return food tile UI
          return FoodTile(
            food: food,
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => FoodPage(food: food),
              ),
            ),
          );
        },
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(),
      body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
                MySliverAppBar(
                  title: MyTabBar(tabController: _tabController),
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 50.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Divider(
                          indent: 25,
                          endIndent: 25,
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                        // my current location
                        const MyCurrentLocation(),

                        // description box
                        const MyDescriptionBox(),
                      ],
                    ),
                  ),
                ),
              ],
          body: Consumer<Restaurant>(
            builder: (context, restuarant, child) => TabBarView(
                controller: _tabController,
                children: getFoodInThisCategory(restuarant.menu)),
          )),
    );
  }
}
