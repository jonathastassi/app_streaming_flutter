import 'package:disney_clone_app/pages/components/title_section_widget.dart';
import 'package:flutter/material.dart';

class ListSection extends StatelessWidget {
  const ListSection({
    Key key,
    @required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        TitleSection(title: title),
        Container(
          height: 140,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://source.unsplash.com/90x140/?Movie"),
                    fit: BoxFit.cover,
                  ),
                ),
                margin: EdgeInsets.only(
                  right: index == 25 - 1 ? 26 : 0,
                  left: index == 0 ? 26 : 12,
                ),
                width: 90,
              );
            },
            itemCount: 25,
          ),
        ),
        SizedBox(
          height: 23,
        ),
      ],
    );
  }
}
