import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text("Cart", style: TextStyle(color: Colors.black),),
      ),

      body: Column(
        children: [
          Expanded(child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Placeholder(),
          )),
          Divider(),
          _cartTotal(),
        ],
      ),
    )

    ;
  }
}

class _cartTotal extends StatelessWidget {
  const _cartTotal({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text("\$9999",style: TextStyle(
            fontSize: 30
          ),),
          ElevatedButton(onPressed: (){

          },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                minimumSize: Size(130, 30),
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 1
                  )
                )
              ),
              child: Text('Buy', style: TextStyle(color: Colors.white),))
        ],
      ),
    );
  }
}

class _cartListState extends StatefulWidget {
  const _cartListState({super.key});

  @override
  State<_cartListState> createState() => _cartListStateState();
}

class _cartListStateState extends State<_cartListState> {
  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
        itemCount: 5,
        itemBuilder: (context,index)=>ListTile(
          leading: Icon(Icons.done),
          trailing: IconButton(
            icon: Icon(Icons.remove_circle_outline), onPressed: () {  },
          ),
          title: Text('Item 1'),
    )
    );
  }
}


