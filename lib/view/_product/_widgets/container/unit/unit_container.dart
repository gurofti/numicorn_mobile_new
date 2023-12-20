import 'package:flutter/material.dart';

import '../../../../../core/extension/context_extension.dart';
import '../../star/start_widget.dart';

class UnitContainer extends StatelessWidget {
  UnitContainer({
    Key? key,
    required this.header,
    required this.description,
  }) : super(key: key);
  String header;
  String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.width,
      // alignment: Alignment.centerLeft,
      child: Stack(
        children: [
          Positioned.fill(
            child: Row(
              children: [Star(), Star()],
            ),
          ),
          Container(
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
                      header + '. Ünite',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'PoppinsBold',
                        fontSize: 22,
                      ),
                    ),
                    Text(
                      'Rakamları kullan, geniş zamanı kullan.',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
                // Container(
                //   decoration: BoxDecoration(
                //     border: Border.all(width: 3, color: Colors.white),
                //     borderRadius: BorderRadius.circular(12),
                //   ),
                //   padding: EdgeInsets.symmetric(vertical: 5, horizontal: 8),
                //   child: Icon(
                //     Icons.menu_book,
                //     color: Colors.white,
                //     size: 28,
                //   ),
                // )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
