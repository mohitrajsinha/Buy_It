// ignore_for_file: camel_case_types

import 'package:android_app/pages/home_detail_page.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../models/cart.dart';
import '../../../models/catalogue.dart';
import '../themes.dart';
import 'catalogue_image.dart';

class CatalogueList extends StatelessWidget {
  const CatalogueList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: CatalogueModel.items.length,
      itemBuilder: (context, index) {
        final Catalogue = CatalogueModel.items[index];
        return InkWell(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: ((context) =>
                        HomeDetailPage(catalogue: Catalogue)))),
            child: Catalogueitems(catalogue: Catalogue));
      },
    );
  }
}

class Catalogueitems extends StatelessWidget {
  final Item catalogue;

  const Catalogueitems({
    Key? key,
    required this.catalogue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return VxBox(
        child: Row(
      children: [
        Hero(
            tag: Key(catalogue.id.toString()),
            child: catalogueimages(image: catalogue.image)),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            catalogue.name.text.lg.color(context.theme.accentColor).bold.make(),
            catalogue.desc.text.textStyle(context.captionStyle).make(),
            10.heightBox,
            ButtonBar(
              alignment: MainAxisAlignment.spaceBetween,
              buttonPadding: EdgeInsets.zero,
              children: [
                "\$${catalogue.price}".text.bold.xl.make(),
                _Add_to_cart(catalogue: catalogue)
              ],
            ).pOnly(right: 9.0)
          ],
        ))
      ],
    )).color(context.theme.cardColor).roundedLg.square(250).make().py16();
  }
}

class _Add_to_cart extends StatefulWidget {
  final Item catalogue;
  const _Add_to_cart({super.key, required this.catalogue});

  @override
  State<_Add_to_cart> createState() => __Add_to_cart();
}

class __Add_to_cart extends State<_Add_to_cart> {
  bool isAdded = false;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          isAdded = isAdded.toggle();
          final _catalogue = CatalogueModel();
          final _cart = CartModel();
          _cart.catalogue = _catalogue;

          _cart.add(widget.catalogue);
          setState(() {});
        },
        style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all(context.theme.buttonColor),
            shape: MaterialStateProperty.all(StadiumBorder())),
        child: isAdded ? Icon(Icons.done) : "Add To Cart".text.make());
  }
}
