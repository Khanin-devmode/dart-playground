import 'product.dart';

class Item {
  Item({required this.product, required this.quantity});
  final Product product;
  final int quantity;

  double get price => product.price * quantity;

  @override
  String toString() {
    return '$quantity x ${product.name}';
  }
}
