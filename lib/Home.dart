import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Widget> listData = [
    Column(
      children: [
        Container(
          decoration: BoxDecoration(
              border: Border.all(width: 5, color: Color(0xffF5591F))),
          child: Image(image: AssetImage("images/histories.png")),
        ),
        Text("Histories", style: TextStyle(fontWeight: FontWeight.bold))
      ],
    ),
    Column(
      children: [
        Container(
            height: 200,
            decoration: BoxDecoration(
                border: Border.all(width: 5, color: Color(0xffF5591F))),
            child: Image(image: AssetImage("images/my_file.png"))),
        Text(
          "My Files",
          style: TextStyle(fontWeight: FontWeight.bold),
        )
      ],
    ),
    Column(
      children: [
        Container(
            decoration: BoxDecoration(
                border: Border.all(width: 5, color: Color(0xffF5591F))),
            child: Image(image: AssetImage("images/my_groups.png"))),
        Text("My Groups", style: TextStyle(fontWeight: FontWeight.bold))
      ],
    ),
    Column(
      children: [
        Container(
            decoration: BoxDecoration(
                border: Border.all(width: 5, color: Color(0xffF5591F))),
            child: Image(image: AssetImage("images/all_users.png"))),
        Text("All users", style: TextStyle(fontWeight: FontWeight.bold))
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerTop,
      floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.white,
          child: Container(
            width: 250,
            child: Row(
              children: const [
                Text(
                  "Create Group",
                  style: TextStyle(color: Color(0xffF5591F)),
                ),
                Icon(Icons.add)
              ],
            ),
          )),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(125),
        child: AppBar(
          systemOverlayStyle:
              SystemUiOverlayStyle(statusBarColor: Color(0xffF5591F)),
          toolbarHeight: 125,
          centerTitle: true,
          title: const Center(
              child: Text(
            "My Profile",
            style: TextStyle(fontSize: 30),
          )),
          backgroundColor: Color(0xffF5591F),
          actions: [
            Builder(
              builder: (context) => IconButton(
                icon: const Icon(Icons.more_vert),
                onPressed: () => Scaffold.of(context).openEndDrawer(),
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 30),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 2,
          childAspectRatio: 3 / 4,
          children: listData,
        ),
      ),
    );
  }
}
