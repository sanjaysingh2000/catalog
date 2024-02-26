import 'package:day2/modals/catlog.dart';
import 'package:day2/pages/home_detail_page.dart';
import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {
  final Item item;
  const ItemWidget({super.key, required this.item});

  //get index => index;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        // onTap: () {
        //
        //   print("${item.name} Pressed");
        // }
          onTap: () {
            //Item item = CatlogModels.items[index];
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HomeDetailPage(item: item),
              ),
            );
          },
        leading: Hero(tag: Key(item.id.toString()),
        child: Image.network(item.image)),
        title: Text(item.name),
        subtitle: Text(item.desc),
        trailing: Text("\$${item.price}",
          style: TextStyle(
            color: Colors.purple,
            fontWeight: FontWeight.bold,
          ),
        ),
        textColor: Colors.black87,
      
      ),
    );
  }
}
