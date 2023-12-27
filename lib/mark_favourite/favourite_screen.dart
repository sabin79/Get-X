import 'package:flutter/material.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  List<String> fruitList = [
    'Apple',
    'Mango',
    'Banana ',
    'Orange',
    'Watermelon',
    'Grapes',
    'Strawberry',
    'Pineapple',
  ];
  List<String> tempFruitList = [];
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
                fontSize: 30, fontWeight: FontWeight.bold, color: Colors.green),
          ),
          centerTitle: true,
        ),
        body: ListView.builder(
            itemCount: fruitList.length,
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                  onTap: () {
                    if (tempFruitList.contains(fruitList[index].toString())) {
                      tempFruitList.remove(fruitList[index].toString());
                    } else {
                      tempFruitList.add(fruitList[index].toString());
                    }
                    setState(() {});
                  },
                  title: Text(fruitList[index].toString()),
                  trailing: Icon(
                    Icons.favorite,
                    color: tempFruitList.contains(fruitList[index].toString())
                        ? Colors.red
                        : Colors.white,
                  ),
                ),
              );
            }));
  }
}
