import 'package:flutter/material.dart';

import 'note_item.dart';

class NoteItemList extends StatelessWidget {
  const NoteItemList({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(vertical: 32),
      child: ListView.builder(
        itemBuilder: (context, index) =>const Padding(
          padding: EdgeInsets.symmetric(vertical: 4),
          child: NoteItem(),
        ),
        itemCount: 8,
        padding: EdgeInsets.zero,
        physics: const BouncingScrollPhysics(),


      ),
    );
  }
}