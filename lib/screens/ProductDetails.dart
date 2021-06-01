import 'package:flutter/material.dart';
import 'package:mecommerce/utils/Clipper.dart';

class ProductDetails extends StatefulWidget {
  int index;
  Color color;
  ProductDetails(
    Key key,
    this.index,
    this.color,
  );
  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: widget.color,
        title: Center(
            child: Text(
          'MARCA',
          style: TextStyle(color: Colors.white, fontSize: 15),
        )),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Hero(
              tag: 'like${widget.index}',
              child: GestureDetector(
                onTap: () => print('like'),
                child: Icon(
                  Icons.favorite_outline,
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Hero(
              tag: 'container${widget.index}',
              child: ClipPath(
                clipper: CustomClipperProductDetails(),
                child: Container(
                  color: widget.color,
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.4,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Hero(
              key: widget.key,
              tag: 'productImage${widget.index}',
              child: Image.asset(
                'assets/test.png',
                width: 270,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.5,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.23,
                        height: 70,
                        child: Card(elevation: 5, color: Colors.grey[150]),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.23,
                        height: 70,
                        child: Card(elevation: 5, color: Colors.grey[150]),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.23,
                        height: 70,
                        child: Card(elevation: 5, color: Colors.grey[150]),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.23,
                        height: 70,
                        child: Card(elevation: 5, color: Colors.grey[150]),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 1.2),
                    child: Divider(
                      color: Colors.black,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Product Name',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Text(
                          '100 eur',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 5),
                    child: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolor',
                      style: TextStyle(height: 1.5),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Size',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Text(
                          'EU',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
