import 'dart:convert';
import 'package:day2/modals/catlog.dart';
import 'package:day2/pages/home_detail_page.dart';
import 'package:day2/utils/routes.dart';
import 'package:day2/widgets/drawer.dart';
import 'package:day2/widgets/item_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //late Item item;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  Future<void> loadData() async {
    await Future.delayed(const Duration(seconds: 1));
    final String catalogJson = await rootBundle.loadString("assets/files/catalog.json");
    final Map<String, dynamic> decodedData = jsonDecode(catalogJson);
    final List<dynamic> productData = decodedData["products"];
    CatlogModels.items = List.from(productData)
        .map((item) => Item.fromMap(item)).toList();
    setState(() {

    });

    // Now you can work with productData
  }
  @override
  Widget build(BuildContext context) {
    //final dummyList = List.generate(10, (index) => CatlogModels.items[0]);
    return  Scaffold(
      appBar: AppBar(
        title: Text("Catalog App",),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.pushNamed(context, MyRoutes.cartRoute);
      },
        child: Icon(CupertinoIcons.cart),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child:
        (CatlogModels.items!=null && CatlogModels.items.isNotEmpty)?
        ListView.builder(
            itemCount: CatlogModels.items.length,
            itemBuilder: (context, index) {
              return ItemWidget(
                item: CatlogModels.items[index],
              );
            },
        )
        : Center(
          child: CircularProgressIndicator(),
      )
      ),
      drawer: MyDrawer(),
    );
  }
}
