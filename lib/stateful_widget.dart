import 'package:flutter/material.dart';

class FavouriteStateless extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Statefull Page"),
      ),
      body: FavouriteStateFull(),
    );
  }
}

class FavouriteStateFull extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {

    return FavouriteState();
  }
}

class FavouriteState extends State<FavouriteStateFull> {
  String name;
  var _friends = ["Femi", "Dupe", "Emma", "Kingsley"];
  var _currrentItemSelected = "femi";

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              onChanged: ((String userInput) {
                name = userInput;
              }),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: RaisedButton(
              onPressed: () {
                setState(() {});
              },
              child: Text("Your State"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("My favourite City is $name"),
          ),

        ],
      ),
    );
  }


  void dropDownWidget(){
    DropdownButton<String>(
      items: _friends.map((String dropDownItem) {
        return DropdownMenuItem<String>(
          value: dropDownItem,
          child: Text(dropDownItem),
        );
      }).toList(),
      onChanged: (String newValueSelected) {
        setState(() {
          this._currrentItemSelected = newValueSelected;
        });
      },
      value: _currrentItemSelected,
    );
  }
}
