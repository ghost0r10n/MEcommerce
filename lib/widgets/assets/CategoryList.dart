import 'package:flutter/material.dart';

typedef IndexValue = int Function(int);

class CategoryList extends StatelessWidget {
  int currentIndex;
  IndexValue onTap;
  CategoryList({
    this.currentIndex,
    this.onTap,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 30,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (_, index) {
            return GestureDetector(
              onTap: () => this.onTap(index),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: AnimatedContainer(
                        duration: Duration(milliseconds: 400),
                        height: 13,
                        width: 50,
                        decoration: BoxDecoration(
                            color: this.currentIndex != index
                                ? Colors.transparent
                                : Colors.grey[300],
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                    Align(
                        alignment: Alignment.center,
                        child: Container(
                          width: 50,
                          child: Text(
                            'Prova',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: this.currentIndex != index
                                    ? Colors.grey[300]
                                    : Colors.black),
                            textAlign: TextAlign.center,
                          ),
                        ))
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
