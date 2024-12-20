import 'package:flutter/material.dart';
import 'package:input_quantity/input_quantity.dart';

class Product extends StatelessWidget {
  final String imgUrl;
  final String productName;
  final String price;
  final num count;
  final Function(dynamic) onCountChangedPressed;
  const Product({
    Key? key,
    required this.imgUrl,
    required this.price,
    required this.productName,
    required this.count,
    required this.onCountChangedPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            4,
          ),
          image: DecorationImage(
            image: Image.network(imgUrl).image,
            fit: BoxFit.fill,
          ),
        ),
      ),
      title: Text(
        productName,
      ),
      subtitle: Text('$price/unit'),
      trailing: count == 0
          ? ElevatedButton(
              onPressed: () {},
              child: const Text('Add to Cart'),
            )
          : InputQty(
              maxVal: 100.0,
              initVal: 1.0,
              minVal: -100.0,
              steps: 1,
              onQtyChanged: onCountChangedPressed,
            ),
    );
  }
}
