import 'package:flutter/material.dart';


class Micard extends StatelessWidget {
  const Micard({super.key});
  
    @override
    Widget build(BuildContext context) {
    return Column(
        children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround, 
          children: [
            Row
              (children: [
                Text('User'),
                Icon(Icons.person),
              ],
            ),
            Row(
                children: [
                  TextButton(
                    onPressed: (){}, 
                    child: Text("Follow")
                ),
                  IconButton(
                    onPressed: (){}, 
                    icon: Icon(Icons.people_alt_rounded)
                ),
              ],
            ),
          ],
        ),
          Image(
            image: NetworkImage('https://thumb.wikimedia.org/wikipedia/commons/thumb/8/8f/Leucanthemopsis_alpina07.jpg/250px-Leucanthemopsis_alpina07.jpg?utm_source=es.wikipedia.org&utm_campaign=parser&utm_content=thumbnail'),
          )
        ],
      );
    }
  }