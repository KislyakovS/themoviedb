import 'package:flutter/material.dart';
import 'package:themoviedb/components/wrapper_card.dart';

class Actors extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: const Text(
            'Actors',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ),
        ),
        const SizedBox(height: 20),
        Container(
          height: 260,
          child: ListView(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            children: [
              ActorCard(),
              ActorCard(),
              ActorCard(),
              ActorCard(),
              const SizedBox(width: 20)
            ],
          ),
        ),
      ],
    );
  }
}

class ActorCard extends StatelessWidget {
  const ActorCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      padding: const EdgeInsets.only(left: 16),
      child: WrapperCard(
        child: Column(
          children: [
            Image.asset(
              'assets/images/actor.jpg',
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Steven Yeun',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    'Mark Grayson / Invincible (voice)',
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
