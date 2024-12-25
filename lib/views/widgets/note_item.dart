import 'package:flutter/material.dart';

import 'package:notes/views/edit_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => EditView()));
      },
      child: Container(
        padding: const EdgeInsets.only(top: 24, bottom: 24, left: 16),
        decoration: BoxDecoration(
            color: Colors.orangeAccent,
            borderRadius: BorderRadius.circular(20)
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(

              title:  Text("",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 24
                ),),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 12, bottom: 12),
                child: Text("Build your career with me, Ahmed Sadek ",
                  style: TextStyle(
                      color: Colors.black45,
                      fontSize: 16
                  ),),
              ),
              trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.delete_rounded, color: Colors.black, size: 34,)),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 32),
              child: Text("Dec 21, 2024", style: TextStyle(
                color: Colors.black45,
                fontSize: 16,

              ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

