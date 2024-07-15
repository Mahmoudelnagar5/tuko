// ignore: file_names
import 'package:flutter/material.dart';
import 'package:mahmoud/models/itemModel.dart';
import 'package:mahmoud/components/item.dart';

// // ignore: must_be_immutable

class FamilyMembersPage extends StatelessWidget {
  const FamilyMembersPage({super.key});

  final List<ItemModel> numbers = const [
    ItemModel(
      sound: 'sounds/family_members/father.wav',
      image: 'assets/images/family_members/family_father.png',
      jpName: '父 (chichosha)',
      enName: 'Father',
    ),
    ItemModel(
      sound: 'sounds/family_members/mother.wav',
      image: 'assets/images/family_members/family_mother.png',
      jpName: '母 (hahaoya)',
      enName: 'Mother',
    ),
    ItemModel(
      enName: 'Older Brother',
      image: 'assets/images/family_members/family_older_brother.png',
      sound: 'sounds/family_members/older bother.wav',
      jpName: '兄さん (Nīsan)',
    ),
    ItemModel(
      jpName: '姉 (ane)',
      enName: 'Older Sister',
      image: 'assets/images/family_members/family_older_sister.png',
      sound: 'sounds/family_members/older sister.wav',
    ),
    ItemModel(
      jpName: '弟 (Otōto)',
      enName: 'Younger Brother',
      image: 'assets/images/family_members/family_younger_brother.png',
      sound: 'sounds/family_members/younger brohter.wav',
    ),
    ItemModel(
      jpName: '妹 (Imōto)',
      enName: 'Younger Sister',
      image: 'assets/images/family_members/family_younger_sister.png',
      sound: 'sounds/family_members/younger sister.wav',
    ),
    ItemModel(
        jpName: 'お爺さん (Ojīsan)',
        enName: 'Grandfather',
        image: 'assets/images/family_members/family_grandfather.png',
        sound: 'sounds/family_members/grand father.wav'),
    ItemModel(
        jpName: '祖母 (sobo)',
        enName: 'Grandmother',
        image: 'assets/images/family_members/family_grandmother.png',
        sound: 'sounds/family_members/grand mother.wav'),
    ItemModel(
        jpName: '息子 (musuko)',
        enName: 'Son',
        image: 'assets/images/family_members/family_son.png',
        sound: 'sounds/family_members/son.wav'),
    ItemModel(
        jpName: '娘 (musume)',
        enName: 'Daughter',
        image: 'assets/images/family_members/family_daughter.png',
        sound: 'sounds/family_members/daughter.wav'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 25, 58, 2),
        title: const Text(
          "Family Members",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index) {
          return Item(
            color: const Color(
              0xff5D8B3E,
            ),
            item: numbers[index],
          );
        },
      ),
    );
  }
}
