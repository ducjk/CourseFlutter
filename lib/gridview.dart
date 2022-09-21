import 'package:flutter/material.dart';

class gridview extends StatefulWidget {
  gridview({super.key});

  @override
  State<gridview> createState() => _gridviewState();
}

class _gridviewState extends State<gridview> {
  List<String> list = [
    'assets/sliders/anh1.jpg',
    'assets/sliders/anh2.jpg',
    'assets/sliders/anh3.jpg',
    'assets/sliders/anh4.jpg',
  ];

  bool showGrid = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildTitle(context),
              SizedBox(
                height: 20,
              ),
              buildWelcome(context),
              SizedBox(
                height: 40,
              ),
              buildSearch(context),
              SizedBox(
                height: 20,
              ),
              buildSavedPlace(context),
              SizedBox(
                height: 20,
              ),
              showGrid ? buildGrid(context) : buildList(context),
            ],
          ),
        ),
      ),
    );
  }

  buildTitle(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
        IconButton(onPressed: () {}, icon: Icon(Icons.extension))
      ],
    );
  }

  buildWelcome(BuildContext context) {
    return const Text.rich(TextSpan(
        text: "Welcome",
        style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
        children: [
          TextSpan(
              text: " Charlie", style: TextStyle(fontWeight: FontWeight.normal))
        ]));
  }

  buildSearch(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          hintText: "Search",
          prefixIcon: Icon(Icons.search),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
    );
  }

  buildSavedPlace(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Saved Places",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
        buildIconButton(context)
      ],
    );
  }

  buildGrid(BuildContext context) {
    return Expanded(
      child: GridView.count(
        mainAxisSpacing: 20,
        crossAxisSpacing: 20,
        crossAxisCount: 2,
        children: [
          ...list.map((e) {
            return Container(
              decoration: BoxDecoration(
                  image:
                      DecorationImage(image: AssetImage(e), fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(20)),
            );
          }).toList()
        ],
      ),
    );
  }

  buildList(BuildContext context) {
    return Expanded(
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          ...list.map((e) {
            return Container(
              margin: EdgeInsets.only(bottom: 20),
              height: 300,
              decoration: BoxDecoration(
                  image:
                      DecorationImage(image: AssetImage(e), fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(20)),
            );
          }).toList()
        ],
      ),
    );
  }

  buildIconButton(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {
            setState(() {
              showGrid = false;
            });
          },
          icon: Icon(Icons.list),
        ),
        IconButton(
            onPressed: () {
              setState(() {
                showGrid = true;
              });
            },
            icon: Icon(Icons.grid_view))
      ],
    );
  }
}
