
import 'package:appimage/db/db.dart';
import 'package:appimage/screen/showdata.dart';
import 'package:appimage/string.dart';
import 'package:flutter/material.dart';

import '../wadget/custome_container_product.dart';


class Design extends StatelessWidget {
  const Design({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('e-commerce'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            GridView.builder(
              shrinkWrap: true,
              itemCount: Db().productmodel.length,
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 170,
                  childAspectRatio: 0.52,
                ),
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ShowData(
                      modle: Db().productmodel[index],
                    ),));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CustomeContainer(
                      image: Db().productmodel[index].productImage,
                      price: Db().productmodel[index].productPrice,
                      productDes: Db().productmodel[index].productDec,
                      productName: Db().productmodel[index].productName,
                    ),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
