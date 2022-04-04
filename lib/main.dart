import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BelajarAppBar(),
    );
  }
}

class BelajarAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 3,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                expandedHeight: 200.0,
                floating: false,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  title: Text("My AppBar",
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 25.0,
                      )),
                  background: Image(
                    image: AssetImage('assets/images/1.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SliverPersistentHeader(
                pinned: true,
                delegate: _SliverAppBarDelegate(
                  TabBar(
                    labelColor: Colors.black87,
                    unselectedLabelColor: Colors.grey,
                    tabs: [
                      new Tab(icon: new Icon(Icons.audiotrack), text: "Music"),
                      new Tab(icon: new Icon(Icons.collections), text: "Gallery"),
                      new Tab(icon: new Icon(Icons.contact_phone), text: "Contact"),
                    ],
                  ),
                ),
              ),
            ];
          },
          body: TabBarView(
            children: <Widget>[
              Music(),
              Gallery(),
              Contact()
            ],
          ),
        ),
      ),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate(this._tabBar);

  final TabBar _tabBar;

  @override
  double get minExtent => _tabBar.preferredSize.height;
  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return new Container(
      child: _tabBar,
      color: Colors.white,
    );
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}

class Music extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.audiotrack),
            title: Text("Can't Control Myself - Taeyeon"),
          ),
          ListTile(
            leading: Icon(Icons.audiotrack),
            title: Text("I - Taeyeon"),
          ),
          ListTile(
            leading: Icon(Icons.audiotrack),
            title: Text("Fine - Taeyeon"),
          ),
          ListTile(
            leading: Icon(Icons.audiotrack),
            title: Text("If - Taeyeon"),
          ),
          ListTile(
            leading: Icon(Icons.audiotrack),
            title: Text("Deja Vu - Olivia Rodrigo"),
          ),
          ListTile(
            leading: Icon(Icons.audiotrack),
            title: Text("Traitor - Olivia Rodrigo"),
          ),
          ListTile(
            leading: Icon(Icons.audiotrack),
            title: Text("Good 4 U - Olivia Rodrigo"),
          ),
          ListTile(
            leading: Icon(Icons.audiotrack),
            title: Text("Favorite Crime - Olivia Rodrigo"),
          ),
          ListTile(
            leading: Icon(Icons.audiotrack),
            title: Text("Enchanted - Taylor Swift"),
          ),
          ListTile(
            leading: Icon(Icons.audiotrack),
            title: Text("Love Story - Taylor Swift"),
          ),
          ListTile(
            leading: Icon(Icons.audiotrack),
            title: Text("Back To December - Taylor Swift"),
          ),
          ListTile(
            leading: Icon(Icons.audiotrack),
            title: Text("Blank Space - Taylor Swift"),
          ),
          ListTile(
            leading: Icon(Icons.audiotrack),
            title: Text("Mad at Disney - Salem Ilese"),
          ),
          ListTile(
            leading: Icon(Icons.audiotrack),
            title: Text("No Longer - NCT 127"),
          ),
        ],
      ),
    );
  }
}

class Gallery extends StatelessWidget {
  final List images = [
    "assets/images/01.jfif",
    "assets/images/02.png",
    "assets/images/03.jfif",
    "assets/images/04.webp",
    "assets/images/05.jfif",
    "assets/images/06.jpg",
    "assets/images/07.jfif",
    "assets/images/08.jfif",
    "assets/images/09.jpg",
    "assets/images/010.jpeg",
    "assets/images/011.jfif",
    "assets/images/012.jpg",
    "assets/images/013.jfif",
    "assets/images/014.jfif",
    "assets/images/015.jfif",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
        ),
        itemCount: 30,
        itemBuilder: (context, index) {
          if (index > 0) {
            return Padding(
              padding: const EdgeInsets.all(3.0),
              child: Image.asset(images[index % 15]),
            );
          } else {
            return Padding(
              padding: const EdgeInsets.all(5.0),
              child: Image.asset(images[index]),
            );
          }
        },
      ),
    );
  }
}

class Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.account_box),
            title: Text("Ali - 085432983572"),
          ),
          ListTile(
            leading: Icon(Icons.account_box),
            title: Text("Bunga - 081326790236"),
          ),
          ListTile(
            leading: Icon(Icons.account_box),
            title: Text("Dani - 085547846721"),
          ),
          ListTile(
            leading: Icon(Icons.account_box),
            title: Text("Dhilla - 082354446788"),
          ),
          ListTile(
            leading: Icon(Icons.account_box),
            title: Text("Erin - 085364369088"),
          ),
          ListTile(
            leading: Icon(Icons.account_box),
            title: Text("Julia - 085456250897"),
          ),
          ListTile(
            leading: Icon(Icons.account_box),
            title: Text("Lili - 081772980912"),
          ),
          ListTile(
            leading: Icon(Icons.account_box),
            title: Text("Michel - 085388110920"),
          ),
          ListTile(
            leading: Icon(Icons.account_box),
            title: Text("Pita - 085452519018"),
          ),
          ListTile(
            leading: Icon(Icons.account_box),
            title: Text("Qila - 082356292832"),
          ),
          ListTile(
            leading: Icon(Icons.account_box),
            title: Text("Rahma - 085325653787"),
          ),
          ListTile(
            leading: Icon(Icons.account_box),
            title: Text("Reina - 085773109190"),
          ),
          ListTile(
            leading: Icon(Icons.account_box),
            title: Text("Riki - 085654637890"),
          ),
          ListTile(
            leading: Icon(Icons.account_box),
            title: Text("Vivi - 082655768909"),
          ),
          ListTile(
            leading: Icon(Icons.account_box),
            title: Text("Xei - 085487382908"),
          ),
        ],
      ),
    );
  }
}
