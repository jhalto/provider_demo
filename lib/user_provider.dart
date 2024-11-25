import 'package:flutter/cupertino.dart';

class UserProvider extends ChangeNotifier{
  String name;
  String age;
  UserProvider({
   this.name = "nadim", this.age = "30",
});

  void changeName({
       required String newName,
})async{
    name = newName;
    notifyListeners();
}
}