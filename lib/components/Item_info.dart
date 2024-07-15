// ignore: file_names
import 'package:flutter/material.dart';
import 'package:mahmoud/models/itemModel.dart';

class ItemInfo extends StatelessWidget {
  const ItemInfo({
    super.key,
    required this.item,
  });
  final ItemModel item;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                item.jpName,
                style: const TextStyle(color: Colors.white, fontSize: 20),
              ),
              Text(
                item.enName,
                style: const TextStyle(color: Colors.white, fontSize: 20),
              ),
            ],
          ),
        ),
        const Spacer(
          flex: 1,
        ),
        IconButton(
          //splashColor: Colors.amber,
          onPressed: () {
            item.playSound();
          },
          icon: const Icon(
            Icons.play_arrow,
            color: Colors.white,
            size: 32,
          ),
        ),
      ],
    );
  }
}