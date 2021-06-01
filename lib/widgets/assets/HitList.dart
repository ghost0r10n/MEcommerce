import 'package:flutter/material.dart';

typedef IndexValue = int Function(int);

class HitList extends StatelessWidget {
  int currentIndex;
  IndexValue onTap;
  HitList({
    this.currentIndex,
    this.onTap,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.14,
      height: MediaQuery.of(context).size.height * 0.46,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: RotatedBox(
              quarterTurns: 3,
              child: Container(
                height: 20,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (_, index) {
                      return GestureDetector(
                        onTap: () => this.onTap(index),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30.0),
                          child: Text(
                            'Featured',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: this.currentIndex == index
                                    ? Colors.black
                                    : Colors.grey[400]),
                          ),
                        ),
                      );
                    }),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
