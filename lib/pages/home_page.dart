import 'package:disney_clone_app/pages/components/list_banners_widget.dart';
import 'package:disney_clone_app/pages/components/list_section_resume_widget.dart';
import 'package:disney_clone_app/pages/components/list_section_widget.dart';
import 'package:disney_clone_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      systemNavigationBarColor: kSecondBackgroundColor,
      statusBarColor: Colors.transparent,
    ));

    Size size = MediaQuery.of(context).size;

    var widthBox = ((size.width - 32) / 5) - 20;

    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [
            0.1,
            0.5,
          ],
          colors: [
            kFirstBackgroundColor,
            kSecondBackgroundColor,
          ],
        ),
      ),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          bottomNavigationBar: Container(
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(
                  color: Color(0xFF272d3e),
                ),
              ),
            ),
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _buildButtonMenu(Icons.home),
                _buildButtonMenu(Icons.search),
                _buildButtonMenu(Icons.download_rounded),
                _buildButtonMenu(null),
              ],
            ),
          ),
          body: CustomScrollView(
            slivers: [
              SliverAppBar(
                backgroundColor: Colors.transparent,
                flexibleSpace: FlexibleSpaceBar(
                  title: Text(
                    "APP FAMOSO DE STREAM",
                    style: TextStyle(color: Colors.white),
                  ),
                  centerTitle: true,
                ),
              ),
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    ListBanners(),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 26,
                        vertical: 10,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          _itemChannel(widthBox),
                          _itemChannel(widthBox),
                          _itemChannel(widthBox),
                          _itemChannel(widthBox),
                          _itemChannel(widthBox),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    ListSection(
                      title: "Recomendados para Você",
                    ),
                    ListSection(
                      title: "Novidades no APP",
                    ),
                    ListSectionResume(
                      title: "Continue Assistindo",
                      size: size,
                    ),
                    ListSection(
                      title:
                          "Porque Você Assistiu: Dois Irmãos: Uma Jornada Fantástica",
                    ),
                    ListSection(
                      title: "Originais",
                    ),
                    ListSection(
                      title: "Universo Cinematográfico",
                    ),
                    ListSection(
                      title: "Musicais",
                    ),
                    ListSection(
                      title: "Espaço e Exploração",
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  IconButton _buildButtonMenu(IconData iconData) {
    if (iconData == null) {
      return IconButton(
        splashRadius: 25,
        icon: ClipOval(
            child: Image.asset(
          "assets/images/menu.jpg",
          fit: BoxFit.cover,
          width: 30,
          height: 30,
        )),
        onPressed: () {},
      );
    }

    return IconButton(
      splashRadius: 25,
      icon: Icon(
        iconData,
        size: 30,
        color: Color(0xFF96999d),
      ),
      onPressed: () {},
    );
  }

  Container _itemChannel(double widthBox) {
    return Container(
      width: widthBox,
      height: widthBox,
      decoration: BoxDecoration(
        gradient: RadialGradient(
          center: Alignment.topCenter,
          tileMode: TileMode.repeated,
          radius: 3,
          colors: [
            Color(0xFF091c4a),
            Color(0xFF054ba7),
          ],
        ),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: Color(0xFF2c3757),
          width: 1,
        ),
      ),
      child: Icon(
        Icons.mouse,
        color: Colors.white,
      ),
    );
  }
}
