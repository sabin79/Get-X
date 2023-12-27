import 'package:get/get.dart';

class FavouriteController extends GetxController {
  RxList<String> fruitList = [
    'Apple',
    'Mango',
    'Banana ',
    'Orange',
    'Watermelon',
    'Grapes',
    'Strawberry',
    'Pineapple',
  ].obs;
  RxList tempFruitList = [].obs;

  addToFavourite(String value) {
    tempFruitList.add(value);
  }

  removeFromFavourite(String value) {
    tempFruitList.remove(value);
  }
}
