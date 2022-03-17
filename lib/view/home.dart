import 'package:ceksos/view/formkk.dart';
import 'package:ceksos/view/formnik.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double _opacity = 0;
  late ScrollController _scrollController;
  double _scrollPosition = 0;
  int pageIndex = 0;

  _scrollListener() {
    setState(() {
      _scrollPosition = _scrollController.position.pixels;
    });
  }

  _pageListener(int newIndex) {
    setState(() {
      pageIndex = newIndex;
    });
  }

  //display pages list
  final pages = [const FormNIK(), const FormKK()];
  //background color list
  final backgroundcolorswitch = [Colors.blue.shade200, Colors.green.shade200];

  @override
  void initState() {
    _scrollController = ScrollController();
    _scrollController.addListener(_scrollListener);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    //define screensize
    Size screenSize = MediaQuery.of(context).size;

    _opacity = _scrollPosition < screenSize.height * 0.40
        ? _scrollPosition / (screenSize.height * 0.40)
        : 1;
    //routing

    return Scaffold(
        backgroundColor: backgroundcolorswitch[pageIndex],
        extendBodyBehindAppBar: true,
        appBar: PreferredSize(
            child: appbar(
              screenSize.width,
              _opacity,
            ),
            preferredSize: Size(screenSize.width, 1000)),
        body: Stack(
          children: [
            SizedBox(
              height: screenSize.height * 0.45,
              width: screenSize.width,
              child: Image.asset(
                "assets/images/topImage1.png",
                fit: BoxFit.fitWidth,
              ),
            ),
            Container(
              height: screenSize.height,
              width: screenSize.width,
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.only(
                    top: screenSize.height * 0.05,
                    left: screenSize.width / 50,
                    right: screenSize.width / 50,
                  ),
                  child: pages[pageIndex],
                ),
              ),
            ),
          ],
        ));
  }

  appbar(double width, opacity) {
    return Container(
      color: Colors.transparent,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      _pageListener(0);
                    },
                    child: const Text(
                      'CEK NIK',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  // SizedBox(width: width / 20),
                  // InkWell(
                  //   onTap: () {
                  //     _pageListener(1);
                  //   },
                  //   child: const Text(
                  //     'CEK KK',
                  //     style: TextStyle(color: Colors.black),
                  //   ),
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
