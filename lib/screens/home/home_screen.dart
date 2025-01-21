import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_2/screens/home/tabs/ahadeth_tab.dart';
import 'package:islami_2/screens/home/tabs/quran_tab.dart';
import 'package:islami_2/screens/home/tabs/radio_tab.dart';
import 'package:islami_2/screens/home/tabs/sebha_tab.dart';
import 'package:islami_2/screens/home/tabs/settings_tab.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "home";

  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedindex = 0;
  List<Widget> tabs = [
    RadioTab(),
    SebhaTab(),
    AhadethTab(),
    QuranTab(),
    SettingsTab(),
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/bg.png'),
            ),
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.transparent,
            title: Text(
              'Islami',
              style: GoogleFonts.elMessiri(
                fontSize: 30,
                color: Color(0xff242424),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          body: tabs[selectedindex],
          bottomNavigationBar: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/radio.png')),
                label: 'Radio',
                backgroundColor: Color(0xffB7935F),
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/sebha.png')),
                label: 'Sebha',
                backgroundColor: Color(0xffB7935F),
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage(
                  'assets/images/hadeth.png',
                )),
                label: 'Ahadeth',
                backgroundColor: Color(0xffB7935F),
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage(
                  'assets/images/moshaf.png',
                )),
                label: 'Quran',
                backgroundColor: Color(0xffB7935F),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: 'Settings',
                backgroundColor: Color(0xffB7935F),
              ),
            ],
            onTap: (index) {
              selectedindex = index;
              setState(() {});
            },
            currentIndex: selectedindex,
            type: BottomNavigationBarType.shifting,
            unselectedItemColor: Colors.white,
            selectedItemColor: Colors.black,
            showSelectedLabels: true,
            iconSize: 25,
          ),
        ),
      ],
    );
  }
}
