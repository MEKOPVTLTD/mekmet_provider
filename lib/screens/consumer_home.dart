import 'package:flutter/material.dart';
import 'package:mekmet_provider/screens/consumer_drawer.dart';

class ConsumerHomeWidget extends StatefulWidget {
  ConsumerHomeWidget({super.key, required this.fullAddress});

  @override
  ConsumerHomeWidgetState createState() => ConsumerHomeWidgetState();

  String fullAddress = '';
}

class ConsumerHomeWidgetState extends State<ConsumerHomeWidget> {
  bool isSearching = false;

  String searchValue = '';

  bool isCategoryLoading = false;
  bool isCategoryLoaded = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        automaticallyImplyLeading: !isSearching,
        title: Text("Title to update"),

      ),

      drawer: ConsumerDrawer(),
      body: render(context)
      // body: render(context)
    );
  }


  SingleChildScrollView render(BuildContext context) {
    return SingleChildScrollView(
      child: Text("consumer screen"),
    );
  }


}
