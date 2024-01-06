import 'package:flutter/material.dart';

class UnitCard extends StatelessWidget {
  UnitCard({
    required this.title,
    required this.description,
    Key? key,
  }) : super(key: key);

  String title;
  String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 15,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'PoppinsBold',
                  fontSize: 21,
                ),
              ),
              Text(
                description,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              )
            ],
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(width: 3, color: Colors.white),
              borderRadius: BorderRadius.circular(12),
            ),
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 8),
            child: Icon(
              Icons.menu_book,
              color: Colors.white,
              size: 28,
            ),
          )
        ],
      ),
    );
  }
}
