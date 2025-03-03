import 'package:bookly_app/core/constants.dart';
import 'package:bookly_app/features/home/data/models/book_model.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/best_deals_item_content.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/home_view_body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BestDealsItem extends StatelessWidget {
  const BestDealsItem({super.key, required this.book});

  final Book book;
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(12),
      ),
      padding: EdgeInsets.all(screenWidth * 0.03),
      child: BestDealsItemContent(book: book),
    );
  }
}
