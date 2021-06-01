import 'package:flutter/material.dart';

class DiscoverTopBar extends StatelessWidget {
  const DiscoverTopBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Discover',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundColor: Colors.grey[300],
                radius: 15,
                child: Icon(
                  Icons.search,
                  color: Colors.black,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundColor: Colors.grey[300],
                radius: 15,
                child: Icon(
                  Icons.notifications_none,
                  color: Colors.black,
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
