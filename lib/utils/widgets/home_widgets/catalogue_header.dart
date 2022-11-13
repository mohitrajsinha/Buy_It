import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../themes.dart';

class CatalogueHeader extends StatelessWidget {
  const CatalogueHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "Catalogue App".text.xl4.bold.color(context.accentColor).make(),
        "Trending products".text.xl2.make(),
      ],
    );
  }
}
