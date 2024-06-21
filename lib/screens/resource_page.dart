import 'package:flutter/material.dart';

class ResourcePage extends StatefulWidget {
  const ResourcePage({Key? key}) : super(key: key);
  static String id = "resource_page";

  @override
  State<ResourcePage> createState() => _ResourcePageState();
}

class _ResourcePageState extends State<ResourcePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Resource"),
        centerTitle: true,
        automaticallyImplyLeading: false,
        actions: <Widget>[IconButton(onPressed: () {}, icon: Icon(Icons.add))],
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [Colors.red, Colors.blue])),
        child: ListView(children: <Widget>[
          ResourceCard(
            data: "Books",
            image: "assets/images/book.png",
          ),
          ResourceCard(
            data: "Notes",
            image: "assets/images/notes.jpeg",
          ),
          ResourceCard(
            data: "Test Papers",
            image: "assets/images/test.jpeg",
          ),
        ]),
      ),
    );
  }
}

class ResourceCard extends StatelessWidget {
  String data;
  String image;
  ResourceCard({Key? key, required this.data, required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 400,
        width: double.infinity,
        child: Container(
          decoration: BoxDecoration(color: Colors.white),
          child: Column(
            children: <Widget>[
              Expanded(
                  child: Container(
                      color: Colors.green,
                      child: SizedBox(
                        width: double.infinity,
                        child: Image.asset(
                          image,
                          fit: BoxFit.cover,
                        ),
                      ))),
              Expanded(
                  child: Container(
                color: Colors.yellow,
                child: Center(
                  child: Text(data),
                ),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
