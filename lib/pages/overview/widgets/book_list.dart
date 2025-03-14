import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/app_data/book_data.dart';

class BookList extends StatelessWidget {
  const BookList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        separatorBuilder: (context, index) {
          return Divider(
            height: 20,
          );
        },
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: bookItems.length,
        itemBuilder: (context, index) {
          // single single book get
          final book = bookItems[index];
          return Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: CachedNetworkImage(
                  height: 150,
                  width: 100,
                  imageUrl: book.imageUrl,
                  fit: BoxFit.cover,
                  errorWidget: (c, s, o) {
                    return Image.asset(
                        'assets/icons/3069185_book_education_learn_school_icon.png');
                  },
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(book.title),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      book.author,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(book.rating),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Icon(CupertinoIcons.book),
                        SizedBox(
                          width: 10,
                        ),
                        Text('${book.pages} pages')
                      ],
                    ),
                  ],
                ),
              ),
              Icon(book.isBookMarked ? Icons.bookmark : Icons.bookmark_border)
            ],
          );
        });
  }
}