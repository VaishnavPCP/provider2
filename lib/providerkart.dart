import 'package:flutter/material.dart';
class Providerkart extends ChangeNotifier{

  List Addcart1=[];
  List get avatar=>Addcart1;

  List Addcart2=[];
  List get name=>Addcart2;

  List Addcart3=[];
  List get unit=>Addcart3;

  List Addcart4=[];
  List get price=>Addcart4;

  void add(String img,String name,String unit,String price){
    final Ad1=Addcart1.contains(img);

    if(Ad1){
      Addcart1.remove(img);
      Addcart2.remove(name);
      Addcart3.remove(unit);
      Addcart4.remove(price);

    }else{
      Addcart1.add(img);
      Addcart2.add(name);
      Addcart3.add(unit);
      Addcart4.add(price);

    }
    notifyListeners();
  }


  bool check(String name){
    final Add=
    Addcart2.contains(name);
    return Add;
  }
}
