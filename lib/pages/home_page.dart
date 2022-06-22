import 'package:flutter/material.dart';
import 'package:flutter_icon_switcher/flutter_icon_switcher.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void _updateIcon(String type) async {
    await FlutterIconSwitcher.updateIcon(type);
  }

  void _resetIcon() async {
    await FlutterIconSwitcher.resetIcon();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        title: const Text(
          'Choose icon',
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: GridView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 15,
          mainAxisSpacing: 15,
        ),
        children: [
          buildItem(
            context,
            'assets/images/ic_launcher.png',
            'Flutter',
            () {
              _updateIcon('MainActivity');
            },
          ),
          buildItem(
            context,
            'assets/images/ic_launcher2.png',
            'Tesla',
            () {
              _updateIcon("TESLA");
            },
          ),
          buildItem(
            context,
            'assets/images/ic_launcher3.png',
            'BMW',
            () {
              _updateIcon("BMW");
            },
          ),
          buildItem(
            context,
            'assets/images/ic_launcher4.png',
            'Apple',
            () {
              _updateIcon("APPLE");
            },
          ),
          buildItem(
            context,
            'assets/images/ic_launcher5.png',
            'Google',
            () {
              _updateIcon("GOOGLE");
            },
          ),
          buildItem(
            context,
            'assets/images/ic_launcher6.png',
            'React',
            () {
              _updateIcon("REACT");
            },
          ),
        ],
      ),
    );
  }

  Widget buildItem(
    BuildContext context,
    String imgSrc,
    String title,
    Function func,
  ) {
    return GestureDetector(
      onTap: () => func(),
      child: Container(
        padding: const EdgeInsets.only(left: 10, right: 10, bottom: 0, top: 10),
        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(15)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              imgSrc,
              height: 140,
              width: MediaQuery.of(context).size.width,
            ),
            // const SizedBox(height: 15),
            Text(
              title,
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w400),
            ),
          ],
        ),
      ),
    );
  }
}
