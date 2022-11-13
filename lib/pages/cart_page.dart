import 'dart:developer';

import 'package:android_app/models/cart.dart';
import 'package:android_app/utils/widgets/themes.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.canvasColor,
      appBar: AppBar(
        backgroundColor: context.canvasColor,
        centerTitle: true,
        title: "Cart".text.bold.color(context.accentColor).make(),
      ),
      body: Column(
        children: [cart_list().p32().expand(), Divider(), CartTotal()],
      ),
    );
  }
}

class CartTotal extends StatelessWidget {
  const CartTotal({super.key});

  @override
  Widget build(BuildContext context) {
    final _cart = CartModel();
    return SizedBox(
      height: 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          "\$${_cart.totalprice}".text.xl5.color(context.accentColor).make(),
          30.widthBox,
          ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content:
                            "This feature is not available yet!".text.make()));
                  },
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(context.theme.buttonColor),
                      shape: MaterialStateProperty.all(StadiumBorder())),
                  child: "Buy".text.make())
              .wh(100, 50)
        ],
      ),
    );
  }
}

class cart_list extends StatefulWidget {
  const cart_list({super.key});

  @override
  State<cart_list> createState() => _cart_listState();
}

class _cart_listState extends State<cart_list> {
  final _cart = CartModel();
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _cart.items?.length,
      itemBuilder: ((context, index) => ListTile(
            leading: Icon(Icons.done),
            trailing: IconButton(
              icon: Icon(Icons.remove_circle_outline_outlined),
              onPressed: () {
                _cart.remove(_cart.items[index]);
                  setState(() {});
              },
            ),
            title: _cart.items[index].name.text.make(),
          )),
    );
  }
}
