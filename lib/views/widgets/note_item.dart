import 'package:flutter/material.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.only(top: 24,bottom: 24,left: 16),
      decoration: BoxDecoration(
          color: Colors.orangeAccent.withOpacity(0.3),
          borderRadius: BorderRadius.circular(14)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(

            title: Text("Flutter Notes",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 28
              ),),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 12,bottom: 12),
              child: Text("Build your career with me, Ahmed Sadek ",
                style: TextStyle(
                    color: Colors.black.withOpacity(0.5),
                    fontSize: 18
                ),),
            ),
            trailing: IconButton(onPressed: (){},
                icon: Icon(Icons.delete_rounded,color: Colors.black,size: 34,)),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 32),
            child: Text("Dec 21, 2024",style: TextStyle(
                color: Colors.black.withOpacity(0.5),
                fontSize: 16,

            ),
            ),
          )
        ],
      ),
    );
  }
}