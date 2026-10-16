import 'package:flutter/material.dart';

class MiWidget extends StatelessWidget {
  const MiWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround, 
          children: [
            Row
              (children: [
                Text('Hola'),
                Icon(Icons.align_vertical_bottom),
              ],
            ),
          ],
        ),
          Image(
            image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTsbBpP8Epo7lzmktBGpWj_jPq9-MnjS4x3ipMy5pG7aw&s=10'),
          )
        ],
      );
  }
}