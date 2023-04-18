import 'package:firebase_database/firebase_database.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:untitled/model/shoes_product.dart';

class ProductsCall{



  Future<List<Products>> getProducts(DatabaseReference databaseReference) async{

    List<Products> list=[];
    final prefs = await SharedPreferences.getInstance();
    DatabaseEvent event =await databaseReference.child("pruductlist").once();
    for(var element in event.snapshot.children){
      Map<dynamic,dynamic> jsonResponse= element.value as Map<dynamic,dynamic>;
      Products p=Products.fromMap(jsonResponse);
      list.insert(0,p);
      print(jsonResponse.toString());
    }
    return list;
  }

}