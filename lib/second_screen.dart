import 'package:flutter/material.dart';


class SecondScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Second Screen"),),
      body: getListView(),
      floatingActionButton: FloatingActionButton(onPressed: (){

      },
      child: Icon(Icons.add),),
    );
  }


  //Prepare the Data Source (Generate the item)
  List<UserProfile> getListElement(){

    //another way you can prepare data source
    var item = List<String>.generate(1000, (counter){return "item $counter";});

    List<UserProfile> myItem = List<UserProfile>();
    myItem.add(new UserProfile("Adegbite", "Femi", 26, "Programmer"));
    myItem.add(new UserProfile("Ige", "Wilson", 24, "Computarist"));
    myItem.add(new UserProfile("Adenola", "Emmnuel", 22, "Computarist"));
    myItem.add(new UserProfile("Ehizibue", "Ruth", 21, "Talkative"));
    myItem.add(new UserProfile("Adeboyewa", "yemi", 24, "physicist"));
    myItem.add(new UserProfile("Ige", "Wilson", 24, "Computarist"));
    myItem.add(new UserProfile("Ige", "Wilson", 24, "Computarist"));
    myItem.add(new UserProfile("Ige", "Wilson", 24, "Computarist"));
    myItem.add(new UserProfile("Ige", "Wilson", 24, "Computarist"));
    myItem.add(new UserProfile("Ige", "Wilson", 24, "Computarist"));
    myItem.add(new UserProfile("Ige", "Wilson", 24, "Computarist"));
    myItem.add(new UserProfile("Ige", "Wilson", 24, "Computarist"));
    myItem.add(new UserProfile("Ige", "Wilson", 24, "Computarist"));

    return myItem;
  }

  Widget getListView(){

    List<UserProfile> listItem = getListElement();

    return ListView.builder(itemCount: listItem.length, itemBuilder: (context, index){
      UserProfile userProfile = listItem[index];
        return ListTile(leading: Icon(getIcons(userProfile.age)),
          title: Text("${userProfile.firstName} ${userProfile.secondName}" ),
          subtitle: Text(userProfile.occupation),
          trailing: Icon(Icons.check),
        onTap: (){
          Scaffold.of(context).showSnackBar(SnackBar(content: Text("i am pressed"),
          action: SnackBarAction(label: "UNDO", onPressed: (){debugPrint("undo pressed");}),),);
          debugPrint("i pressed ${userProfile.firstName}");
        },);
    });
  }

  IconData getIcons(int age){
    if(age < 20){
      return Icons.person;
    }if(age >20 && age < 23){
      return Icons.people;
    }else
      return Icons.person_outline;
  }

  Widget basicListView(){
    return ListView(
      children: <Widget>[
        ListTile(leading: Icon(Icons.person),
          title: Text("Adegbite Femi"),
          subtitle: Text("07065256580"),
          trailing: Icon(Icons.check),),
        ListTile(leading: Icon(Icons.person),
          title: Text("Adegbite Femi"),
          subtitle: Text("07065256580"),
          trailing: Icon(Icons.check),),
        ListTile(leading: Icon(Icons.person),
          title: Text("Adegbite Femi"),
          subtitle: Text("07065256580"),
          trailing: Icon(Icons.check),)
      ],
    );
  }

}


class UserProfile{

  String _firstName;
  String _secondName;
  int _age;
  String _occupation;

  UserProfile(this._firstName, this._secondName, this._age, this._occupation);


  String get occupation => _occupation;

  int get age => _age;

  String get secondName => _secondName;

  String get firstName => _firstName;


  set occupation(String value) {
    _occupation = value;
  }

  set age(int value) {
    _age = value;
  }

  set secondName(String value) {
    _secondName = value;
  }

  set firstName(String value) {
    _firstName = value;
  }


}