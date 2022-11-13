import 'package:android_app/utils/routes.dart';
import 'package:android_app/utils/widgets/themes.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:android_app/models/catalogue.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalogue;
  const HomeDetailPage({
    Key? key,
    required this.catalogue,
  })  : assert(catalogue != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: "${catalogue.name}".text.make(),
      ),
      backgroundColor: context.canvasColor,
      bottomNavigationBar: Container(
        color: context.cardColor,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: EdgeInsets.zero,
          children: [
            "\$${catalogue.price}".text.bold.xl4.orange400.make(),
            ElevatedButton(
                    onPressed: () =>
                        Navigator.pushNamed(context, MyRoutes.Cartroute),
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            context.theme.buttonColor),
                        shape: MaterialStateProperty.all(StadiumBorder())),
                    child: "Add To Cart".text.make())
                .wh(115, 55)
          ],
        ).p32(),
      ),
      body: SafeArea(
          bottom: false,
          child: Column(
            children: [
              Hero(
                      tag: Key(catalogue.id.toString()),
                      child: Image.network(catalogue.image))
                  .h32(context),
              // Text(
              //   catalogue.desc,
              //   style: TextStyle(fontWeight: FontWeight.bold),
              // ),
              Expanded(
                  child: VxArc(
                height: 45,
                arcType: VxArcType.CONVEY,
                edge: VxEdge.TOP,
                child: Container(
                  width: context.screenWidth,
                  color: context.cardColor,
                  child: Column(children: [
                    catalogue.name.text.xl2
                        .color(context.accentColor)
                        .bold
                        .make(),
                    catalogue.desc.text
                        .textStyle(context.captionStyle)
                        .xl
                        .make(),
                    10.heightBox,
                    "My at memories and bird the before, separate plutonian wind he turning of sent sitting, for ancient and ah only.."
                        .text
                        .textStyle(context.captionStyle)
                        .make()
                        .px12()
                  ]).py64(),
                ),
              ))
            ],
          ).p16()),
    );
  }
}
