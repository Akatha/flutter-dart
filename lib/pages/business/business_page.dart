import 'package:flutter/material.dart';

import '../book_detail/book_detail.dart';


class BusinessPage extends StatelessWidget {
  const BusinessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('DetailPage')),

      ),
      body: BookDetail(),
    );
  }
}
