// ignore: file_names
import 'package:flutter/material.dart';
import 'package:mahmoud/components/phrase_item.dart';
import 'package:mahmoud/models/itemModel.dart';

// ignore: must_be_immutable
class PhrasesPage extends StatelessWidget {
  List<ItemModel> phraseList = const [
    ItemModel(
        sound: 'sounds/phrases/what_is_your_name.wav',
        jpName: 'Anata no namae wa nandesuka?',
        enName: 'What Is Your Name?'),
    ItemModel(
        sound: 'sounds/phrases/are_you_coming.wav',
        jpName: 'Kimasu ka?',
        enName: 'Are You Coming'),
    ItemModel(
        sound: 'sounds/phrases/how_are_you_feeling.wav',
        jpName: 'Go kibun wa ikagadesu ka?',
        enName: 'How Are You Feeling?'),
    ItemModel(
        sound: 'sounds/phrases/i_love_programming.wav',
        jpName: 'Puroguramingu ga daisuki',
        enName: 'I Love Programming'),
    ItemModel(
        sound: 'sounds/phrases/programming_is_easy.wav',
        jpName: 'Puroguramingu wa kantandesu',
        enName: 'Programming Is Easy'),
    ItemModel(
        sound: 'sounds/phrases/where_are_you_going.wav',
        jpName: 'Doko ni iku no?',
        enName: 'Where are You Going?'),
    ItemModel(
        sound: 'sounds/phrases/yes_im_coming.wav',
        jpName: 'Hai, ikimasu',
        enName: 'Yes Iam Coming'),
    ItemModel(
        sound: 'sounds/phrases/i_love_anime.wav',
        jpName: 'Watashi wa anime ga daisukidesu',
        enName: 'I Love Anime'),
  ];

  PhrasesPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 23, 83, 107),
        title: const Text(
          "Phrases",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView.builder(
        itemCount: phraseList.length,
        itemBuilder: (context, index) {
          return PhrasesItem(
            color: const Color(0xff51B0D5),
            item: phraseList[index],
          );
        },
      ),
    );
  }
}
