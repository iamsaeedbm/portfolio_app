import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'vazir'),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: _getAppBar(),
        body: SafeArea(
          child: _getMainBody(),
        ),
      ),
    );
  }

// appbar method
  PreferredSizeWidget _getAppBar() {
    return AppBar(
      backgroundColor: Colors.deepPurple.shade100,
      title: Text(
        'Portfolio',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }

// main body method
  Widget _getMainBody() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(width: double.infinity),
          _getHeader(),
        ],
      ),
    );
  }

  Widget _getHeader() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: CircleAvatar(
            backgroundImage: AssetImage('images/profile.png'),
            radius: 70.0,
          ),
        ),
        Text(
          'Flutter developer',
          style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 15.0),
        Text(
          'Lorem ipsum dolor sit amet. Ea perferendis porro nam molestiae distinctio aut nobis molestias et ipsum ullam.',
          style: TextStyle(fontSize: 14.0),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 12.0),
        _getRowIcons(),
        SizedBox(height: 12.0),
        _getSkilsCard(),
        SizedBox(height: 12.0),
        _getResume(),
      ],
    );
  }

  Widget _getRowIcons() {
    return Wrap(
      alignment: WrapAlignment.center,
      children: [
        IconButton(
          onPressed: () {},
          icon: FaIcon(FontAwesomeIcons.instagram),
        ),
        IconButton(
          onPressed: () {},
          icon: FaIcon(FontAwesomeIcons.telegram),
        ),
        IconButton(
          onPressed: () {},
          icon: FaIcon(FontAwesomeIcons.linkedin),
        ),
        IconButton(
          onPressed: () {},
          icon: FaIcon(FontAwesomeIcons.github),
        ),
      ],
    );
  }

  Widget _getSkilsCard() {
    var list = ['Android', 'Dart', 'Flutter', 'Java', 'Kotlin'];

    return Wrap(
      children: [
        for (var skill in list)
          Card(
            elevation: 6.0,
            shadowColor: Colors.purple,
            child: Column(
              children: [
                Container(
                  height: 80.0,
                  width: 80.0,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Image(
                      image: AssetImage('images/$skill.png'),
                    ),
                  ),
                ),
                Text('$skill'),
              ],
            ),
          )
      ],
    );
  }

  Widget _getResume() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        width: double.infinity,
        color: Colors.deepPurple.shade100,
        child: Column(
          children: [
            Text(
              'Experience',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(width: double.infinity),
                Text(
                    'Lorem ipsum dolor sit amet. Ea porro nam  distinctio aut nobis molestias et ipsum.'),
                Text(
                    'Lorem ipsum dolor sit amet. Ea porro nam  distinctio aut nobis molestias et ipsum.'),
                Text(
                    'Lorem ipsum dolor sit amet. Ea porro nam  distinctio aut nobis molestias et ipsum.'),
                Text(
                    'Lorem ipsum dolor sit amet. Ea porro nam  distinctio aut nobis molestias et ipsum.'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
