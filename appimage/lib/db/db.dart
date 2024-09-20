import 'package:appimage/model/ecommercemodel.dart';
import 'package:appimage/string.dart';

class Db {
  final List<ProductModel> productmodel = [
    ProductModel(
        productImage: AppImages.chairImage1,
        productName: 'Gaming Chair',
        productPrice: 'RS: 4000',
        productDec: 'this is best chair for gammers so many festurs '
    ),
    ProductModel(
        productImage: AppImages.moderLoungChair,
        productName: 'Modern Loung Chair',
        productPrice: 'RS: 8000',
        productDec: 'this is best chair for lounch so many festurs '
    ),
    ProductModel(
        productImage: AppImages.sofaImage,
        productName: 'Sofa Chair',
        productPrice: 'RS: 14000',
        productDec: 'this is best chair for Room so many festurs '
    ),
  ];
}