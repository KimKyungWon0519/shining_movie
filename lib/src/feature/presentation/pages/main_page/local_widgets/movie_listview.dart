import 'package:flutter/material.dart';

class MovieListView extends StatelessWidget {
  final String title;

  const MovieListView({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 20,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 5,
            bottom: 15,
          ),
          child: SizedBox(
            height: 130,
            child: ListView.separated(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) => const SizedBox(
                width: 10,
              ),
              itemBuilder: (context, index) => Container(
                width: 100,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              itemCount: 10,
            ),
          ),
        ),
      ],
    );
  }
}
