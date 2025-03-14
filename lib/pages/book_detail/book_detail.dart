import 'package:flutter/material.dart';
import 'package:flutterapp/constants/app_sizes.dart';
import 'package:flutterapp/pages/book_detail/widgets/book_section.dart';
import 'package:flutterapp/pages/book_detail/widgets/desc_widget.dart';
import 'package:flutterapp/pages/book_detail/widgets/head_widget.dart';


// Bisesh9$700

class BookDetail extends StatelessWidget {
  const BookDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(onPressed: (){}, icon: Icon(Icons.chevron_left_sharp)),
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.bookmark))
          ],
        ),
        body: Stack(
          children: [
            ListView(
              children: [
                HeadWidget(),
                gapH16,
                BookSection(),
                DescWidget()
              ],
            ),
            Positioned(
              bottom: 20,
              left: 0,
              right: 0,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      //minimumSize: Size(400, 170),
                        backgroundColor: Colors.black,
                        foregroundColor: Colors.white,
                        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        )
                    ),
                    onPressed: (){},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Get It Now'),
                        Icon(Icons.download, color: Colors.white,),
                      ],
                    )
                ),
              ),
            )
          ],
        )
    );
  }
}