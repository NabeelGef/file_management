import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Widget> listData = [
    InkWell(
      onTap: () {
        //show Histories
      },
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                border: Border.all(width: 5, color: const Color(0xffF5591F))),
            child: const Image(image: AssetImage("images/histories.png")),
          ),
          const Text("Histories", style: TextStyle(fontWeight: FontWeight.bold))
        ],
      ),
    ),
    InkWell(
      onTap: () {
        //Show My Files
      },
      child: Column(
        children: [
          Container(
              height: 200,
              decoration: BoxDecoration(
                  border: Border.all(width: 5, color: const Color(0xffF5591F))),
              child: const Image(image: AssetImage("images/my_file.png"))),
          const Text(
            "My Files",
            style: TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    ),
    InkWell(
      onTap: () {
        //show my Groups
      },
      child: Column(
        children: [
          Container(
              decoration: BoxDecoration(
                  border: Border.all(width: 5, color: const Color(0xffF5591F))),
              child: const Image(image: AssetImage("images/my_groups.png"))),
          const Text("My Groups", style: TextStyle(fontWeight: FontWeight.bold))
        ],
      ),
    ),
    InkWell(
      onTap: () {
        //show All Users
      },
      child: Column(
        children: [
          Container(
              decoration: BoxDecoration(
                  border: Border.all(width: 5, color: const Color(0xffF5591F))),
              child: const Image(image: AssetImage("images/all_users.png"))),
          const Text("All users", style: TextStyle(fontWeight: FontWeight.bold))
        ],
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerTop,
      floatingActionButton: SizedBox(
        width: 150,
        child: FloatingActionButton(
            shape:
                BeveledRectangleBorder(borderRadius: BorderRadius.circular(10)),
            onPressed: () {
              //Create Group
            },
            backgroundColor: Colors.white,
            child: SizedBox(
              width: 250,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "Create Group",
                    style: TextStyle(color: Color(0xffF5591F)),
                  ),
                  Icon(
                    Icons.add,
                    color: Color(0xffF5591F),
                  )
                ],
              ),
            )),
      ),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(125),
        child: AppBar(
          systemOverlayStyle:
              const SystemUiOverlayStyle(statusBarColor: Color(0xffF5591F)),
          toolbarHeight: 125,
          centerTitle: true,
          title: const Center(
              child: Text(
            "My Profile",
            style: TextStyle(fontSize: 30),
          )),
          backgroundColor: const Color(0xffF5591F),
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
        padding: const EdgeInsets.only(top: 30),
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
