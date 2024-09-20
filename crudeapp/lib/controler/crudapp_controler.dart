
import 'dart:io';

import 'package:crudeapp/model/datamodel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:image_picker/image_picker.dart';

class Crudapp_controler with ChangeNotifier{
  TextEditingController namecontroler=TextEditingController();
  TextEditingController desccontroler=TextEditingController();
  XFile? image;

  List<Productmodel> productlist=[];


  void addData(Productmodel productmodel){
    productlist.add(productmodel);
    notifyListeners();
  }
  void editData(int index,nam,desc){
    productlist[index].name=nam;
    productlist[index].descpration=desc;
    notifyListeners();
 ;
  }
  Future<void>imagepicker(ImageSource soruce)async{
    final picker=ImagePicker();
    final pikfile= await picker.pickImage(source: soruce);
    if(pikfile!=null){
      image=XFile(pikfile.path);

    }
    
    

  }




}