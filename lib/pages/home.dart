import 'package:flutter/material.dart';
import 'package:i4gentleman/pages/audioList.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    double topSpace = height / 100 * 15, sideSpace = width / 100 * 10;
    double diameter = 120.0;
    /*
    IconButton(
  icon: Image.asset('path/the_image.png'),
  iconSize: 50,
  onPressed: () {},
)
     */
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: new AssetImage('assets/background.png'),
                    fit: BoxFit.cover)),
          ),
          //murry
          Positioned(
              top: topSpace,
              left: sideSpace,
              child: new InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => audioList(danny: true)));
                },
                child: new Container(
                    width: diameter,
                    height: diameter,
                    decoration: new BoxDecoration(
                        border: Border.all(color: Colors.amber, width: 2.0),
                        shape: BoxShape.circle,
                        image: new DecorationImage(
                            fit: BoxFit.fill,
                            image: new AssetImage('assets/facciadanny.png')))),
              )),
          //danny
          Positioned(
              top: topSpace,
              right: sideSpace,
              child: new InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => audioList(murry: true)));
                },
                child: new Container(
                    width: diameter,
                    height: diameter,
                    decoration: new BoxDecoration(
                        border: Border.all(color: Colors.amber, width: 2.0),
                        shape: BoxShape.circle,
                        image: new DecorationImage(
                            fit: BoxFit.fill,
                            image: new AssetImage('assets/facciamurry.png')))),
              )),
          //maurizio
          Positioned(
              bottom: topSpace,
              right: sideSpace,
              child: new InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => audioList(maurizio: true)));
                },
                child: new Container(
                    width: diameter,
                    height: diameter,
                    decoration: new BoxDecoration(
                        border: Border.all(color: Colors.amber, width: 2.0),
                        shape: BoxShape.circle,
                        image: new DecorationImage(
                            fit: BoxFit.fill,
                            image: new AssetImage('assets/facciamaurizio.png')))),
              )),
          //thomas
          Positioned(
              bottom: topSpace,
              left: sideSpace,
              child: new InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => audioList(thomas: true)));
                },
                child: new Container(
                    width: diameter,
                    height: diameter,
                    decoration: new BoxDecoration(
                        border: Border.all(color: Colors.amber, width: 2.0),
                        shape: BoxShape.circle,
                        image: new DecorationImage(
                            fit: BoxFit.fill,
                            image: new AssetImage('assets/facciathomas.png')))),
              ))
        ],
      )),
    );
  }
}
