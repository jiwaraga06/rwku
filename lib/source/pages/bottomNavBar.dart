import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rwku/source/pages/about.dart';
import 'package:rwku/source/pages/home.dart';
import 'package:rwku/source/pages/opening.dart';
import 'package:stylish_bottom_bar/model/bar_items.dart';
import 'package:stylish_bottom_bar/stylish_bottom_bar.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  PageController controller = PageController();
  int selected = 0;
  List screens = [HomeScreen(), WebViewScreen(), AboutScreen()];

  void _updateIndex(int value) {
    setState(() {
      selected = value;
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white, toolbarHeight: 20),
      body: SafeArea(
        child: PageView(
          controller: controller,
          children: const [HomeScreen(), WebViewScreen(), AboutScreen()],
        ),
      ),
      bottomNavigationBar: StylishBottomBar(
        option: AnimatedBarOptions(
          barAnimation: BarAnimation.fade,
          iconStyle: IconStyle.animated,
        ),
        currentIndex: selected,
        onTap: (value) {
          controller.jumpToPage(value);
          setState(() {
            selected = value;
          });
        },
        items: [
          BottomBarItem(
            icon: const Icon(Icons.house, size: 35),
            selectedIcon: const Icon(Icons.house, size: 35),
            backgroundColor: Colors.indigoAccent,
            title: Text('HOME', style: GoogleFonts.poppins()),
          ),
          BottomBarItem(
            icon: const Icon(Icons.recycling, size: 35),
            selectedIcon: const Icon(Icons.recycling, size: 35),
            backgroundColor: Color(0XFF7743DB),
            title: Text('Data Sampah', style: GoogleFonts.poppins()),
          ),
          BottomBarItem(
            icon: const Icon(Icons.info, size: 35),
            selectedIcon: const Icon(Icons.info, size: 35),
            backgroundColor: Color(0XFF940B92),
            title: Text('ABOUT', style: GoogleFonts.poppins()),
          ),
        ],
      ),
    );
  }
}
