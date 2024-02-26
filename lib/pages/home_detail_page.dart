import 'package:day2/modals/catlog.dart';
import 'package:flutter/material.dart';

class HomeDetailPage extends StatelessWidget {
   const HomeDetailPage({super.key, required this.item});

  final Item item;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(8.0),
                child: Hero(tag: Key(item.id.toString()),
                child: Image.network(item.image)),
              ),
        
              SizedBox(
                height: 10,
              ),
              
              Text(item.name),
              SizedBox(
                height: 10,
              ),
              Container(alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Text(item.desc)),
              SizedBox(
                height: 310,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(onPressed:
                      (){print('price');
                    },
                      child:Text("\$${item.price}")
                  ),
        
                  ElevatedButton(onPressed: (){
                    print("button was pressed");
                  }, child: Text("buy"))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
