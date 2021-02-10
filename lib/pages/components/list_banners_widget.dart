import 'package:flutter/material.dart';

class ListBanners extends StatefulWidget {
  @override
  _ListBannersState createState() => _ListBannersState();
}

class _ListBannersState extends State<ListBanners> {
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      margin: EdgeInsets.only(
        bottom: 18,
      ),
      child: PageView.builder(
        itemBuilder: (context, index) {
          return Opacity(
            opacity: currentPage == index ? 1 : 0.5,
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(8),
                ),
                image: DecorationImage(
                  image: NetworkImage(
                    "https://source.unsplash.com/300x200/?Movies",
                  ),
                  fit: BoxFit.cover,
                ),
                color: Colors.transparent,
              ),
              margin: EdgeInsets.only(
                left: 10,
                right: 10,
              ),
            ),
          );
        },
        itemCount: 10,
        controller: PageController(
          initialPage: 0,
          keepPage: true,
          viewportFraction: 0.92,
        ),
        onPageChanged: (index) {
          setState(() {
            currentPage = index;
          });
        },
      ),
    );
  }
}
