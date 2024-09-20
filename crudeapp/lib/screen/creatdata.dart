import 'package:crudeapp/compontes/customtextfield.dart';
import 'package:crudeapp/controler/crudapp_controler.dart';
import 'package:crudeapp/model/datamodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:image_picker/image_picker.dart';
class Creat_product extends StatelessWidget {
   Creat_product({super.key});



  @override
  Widget build(BuildContext context) {
    final data=Provider.of<Crudapp_controler>(context);
    return Scaffold(
      appBar: AppBar(title: Text('creaat product'),),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [

            Custom_textfield(controler:data.namecontroler, labeltext:'name'),
            SizedBox(height: 20,),
            Custom_textfield(controler: data.desccontroler, labeltext: 'descraption'),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: (){
              data.imagepicker(ImageSource.camera);

            }, child:Icon(Icons.camera_alt_outlined)),
            Container(
                width: double.infinity,
                child: ElevatedButton(onPressed: (){
                  final model=Productmodel(id: 1, name: data.namecontroler.text, descpration: data.desccontroler.text,image: data.image!.path);
                data.addData(model);
                Navigator.pop(context);
                }, child: Text('add data')))
          ],
        ),
      )
    );
  }
}
