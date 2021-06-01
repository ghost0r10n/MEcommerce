import 'dart:io';
import 'package:flutter/material.dart';

class Product {
  String id;
  String name;
  String description;
  File image1;
  File image2;
  File image3;
  Product({
    @required this.id,
    @required this.name,
    @required this.description,
    @required this.image1,
    @required this.image2,
    @required this.image3,
  });
}
