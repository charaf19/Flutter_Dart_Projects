import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final String title;
  final String imageUrl;

  void selectCategory() {}

  const CategoryItem(this.imageUrl, this.title);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: selectCategory,
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.network(
              imageUrl,
              height: 250,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.4),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Text(
              title,
              style: Theme.of(context).textTheme.headline6,
            ),
          )
        ],
      ),
    );
  }
}
