import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainBody extends StatelessWidget {
  const MainBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(children: [
          Image.network(
            'https://img.freepik.com/free-vector/king-cartoon-portrait_1284-22607.jpg?w=740&t=st=1692434298~exp=1692434898~hmac=53f20f2284fb6833cf4c295dcd4b12a6900d40ae426b5a04864afbfee4f84a09',
            fit: BoxFit.cover,
            height: 100,
            width: 100,
          ),
          IconButton.filled(
            onPressed: () {},
            icon: SvgPicture.asset('assets/icons/star.svg'),
          ),
          Column(
            children: [
              Row(
                children: [
                  Text('Welcome home'),
                  SizedBox(width: 5),
                  SvgPicture.asset('assets/icons/star.svg'),
                ],
              ),
              Text('Uthman Saleh'),
            ],
          ),
          IconButton.filled(
            onPressed: () {},
            icon: SvgPicture.asset('assets/icons/notif.svg'),
          )
        ]),
      ],
    );
  }
}
