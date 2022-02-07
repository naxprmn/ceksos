import 'package:ceksos/component/appbar.dart';
import 'package:ceksos/component/formverif.dart';
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

  _scrollListener() {
    setState(() {
      _scrollPosition = _scrollController.position.pixels;
    });
  }

  @override
  void initState() {
    _scrollController = ScrollController();
    _scrollController.addListener(_scrollListener);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    _opacity = _scrollPosition < screenSize.height * 0.40
        ? _scrollPosition / (screenSize.height * 0.40)
        : 1;
    return Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        extendBodyBehindAppBar: true,
        appBar: PreferredSize(
            child: AppbarTop(
              width: screenSize.width,
              opacity: _opacity,
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
            SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.only(
                  top: screenSize.height * 0.30,
                  left: screenSize.width / 5,
                  right: screenSize.width / 5,
                ),
                child: const FormWidget(),
              ),
            )
          ],
        ));
  }
}
