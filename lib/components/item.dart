import "package:flutter/material.dart";
import 'package:mahmoud/components/Item_info.dart';
import 'package:mahmoud/models/itemModel.dart';

class Item extends StatelessWidget {
  const Item({super.key, required this.item, required this.color});

  final ItemModel item;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: double.infinity,
      color: color,
      child: Row(children: [
        Container(
          color: const Color(0xffFFF6DC),
          child: Image.asset(item.image!),
        ),
        Expanded(child: ItemInfo(item: item)),
      ]),
    );
  }
}
