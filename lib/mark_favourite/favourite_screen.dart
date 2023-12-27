import 'package:example_app_getx/mark_favourite/favourite_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  // List<String> fruitList = [
  //   'Apple',
  //   'Mango',
  //   'Banana ',
  //   'Orange',
  //   'Watermelon',
  //   'Grapes',
  //   'Strawberry',
  //   'Pineapple',
  // ];
  // List<String> tempFruitList = [];
  FavouriteController controller = Get.put(FavouriteController());
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print("build");
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Getx toutorial',
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.yellowAccent),
          ),
          backgroundColor: Colors.blueAccent,
          centerTitle: true,
        ),
        body: ListView.builder(
            itemCount: controller.fruitList.length,
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                    onTap: () {
                      if (controller.tempFruitList
                          .contains(controller.fruitList[index].toString())) {
                        controller.removeFromFavourite(
                            controller.fruitList[index].toString());
                      } else {
                        controller.addToFavourite(
                            controller.fruitList[index].toString());
                      }
                    },
                    title: Text(controller.fruitList[index].toString()),
                    trailing: Obx(
                      () => Icon(
                        Icons.favorite,
                        color: controller.tempFruitList.contains(
                                controller.fruitList[index].toString())
                            ? Colors.red
                            : Colors.white,
                      ),
                    )),
              );
            }));
  }
}
