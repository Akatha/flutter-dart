import 'package:flutter/material.dart';
import 'package:flutterapp/constants/app_sizes.dart';


class HeadWidget extends StatelessWidget {
  const HeadWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.only(top: 60),
          height: 90,
          color: Colors.green.shade50,
        ),
        Column(
          children: [
            Card(
              elevation: 5,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network('https://images.unsplash.com/photo-1736714384503-16a7bab63dcb?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxmZWF0dXJlZC1waG90b3MtZmVlZHw0fHx8ZW58MHx8fHx8',
                  height: 250,
                  width: 200,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            gapH20,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  Text('Understory: The Hidden World of the Book',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                  gapH4,
                  Text('By A. A. Milne',style: TextStyle(fontWeight: FontWeight.bold),),
                ],
              ),
            ),

          ],
        ),


      ],
    );
  }
}