import 'package:flutter/material.dart';

import 'note_item.dart';

class NoteItemList extends StatelessWidget {
  const NoteItemList({super.key});

  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
      itemBuilder: (context, index) =>const Padding(
        padding: EdgeInsets.symmetric(vertical: 8),
        child: NoteItem(),
      ),
      itemCount: 4,
      physics: const BouncingScrollPhysics(),


    );
  }
}