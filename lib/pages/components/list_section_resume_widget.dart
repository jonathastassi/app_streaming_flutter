import 'package:disney_clone_app/pages/components/title_section_widget.dart';
import 'package:flutter/material.dart';

class ListSectionResume extends StatelessWidget {
  final String title;
  final Size size;

  ListSectionResume({@required this.title, @required this.size});

  Container _itemSectionResume(int index) {
    return Container(
      height: 270,
      margin: EdgeInsets.only(
        right: index == 15 - 1 ? 26 : 0,
        left: index == 0 ? 26 : 10,
      ),
      width: size.width * 0.8,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          GestureDetector(
            onTap: () {},
            child: Container(
              height: 190,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8),
                  topRight: Radius.circular(8),
                ),
                image: DecorationImage(
                  image: NetworkImage(
                      "https://source.unsplash.com/250x150/?Movies"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      left: 15,
                      bottom: 5,
                    ),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black.withOpacity(0.5),
                    ),
                    child: Icon(
                      Icons.play_arrow,
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: ProgressBar(size: size),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 80,
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Color(0xFF13161f),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(8),
                bottomRight: Radius.circular(8),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Destinos Inesperados",
                  style: TextStyle(
                    color: Color(0xFFe1e4ea),
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  "T1:E5 Líbano",
                  style: TextStyle(
                    color: Color(0xFF84878a),
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  "Resta menos de 1 min",
                  style: TextStyle(
                    color: Color(0xFF84878a),
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        TitleSection(title: "Continue Assistindo"),
        Container(
          height: 270,
          margin: EdgeInsets.only(
            bottom: 18,
          ),
          width: double.infinity,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return _itemSectionResume(index);
            },
            itemCount: 15,
          ),
        ),
      ],
    );
  }
}

class ProgressBar extends StatelessWidget {
  const ProgressBar({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white.withOpacity(.2),
          ),
          height: 5,
          width: double.infinity,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.blue,
          ),
          height: 5,
          width: size.width * 0.7 - 20,
        )
      ],
    );
  }
}
