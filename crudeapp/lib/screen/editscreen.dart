import 'package:crudeapp/compontes/customtextfield.dart';
import 'package:crudeapp/controler/crudapp_controler.dart';
import 'package:crudeapp/model/datamodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class Editscreen extends StatefulWidget {
  final Productmodel modelviwe;
  int index;
   Editscreen({super.key,required this.modelviwe,required this.index});

  @override
  State<Editscreen> createState() => _EditscreenState();
}

class _EditscreenState extends State<Editscreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    final datai=Provider.of<Crudapp_controler>(context,listen: false);
    datai.namecontroler.text=widget.modelviwe.name;
    datai.desccontroler.text=widget.modelviwe.descpration;
  }

  Widget build(BuildContext context) {
    final dataview=Provider.of<Crudapp_controler>(context,listen: false);
    return Scaffold(
      appBar: AppBar(title: Text('Edit screen'),),
      body: Column(
        children: [
          Custom_textfield(controler:dataview.namecontroler, labeltext: 'name'),
          SizedBox(height: 20,),
          Custom_textfield(controler:dataview.desccontroler, labeltext: 'desc'),
          SizedBox(height: 20,),
          ElevatedButton(onPressed: (){
            
            dataview.editData(widget.index, dataview.namecontroler.text, dataview.desccontroler.text);
          Navigator.pop(context);

          }, child: Text('Submit'))




        ],
      ),
    );
  }
}
