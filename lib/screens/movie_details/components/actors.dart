import 'package:flutter/material.dart';
import 'package:themoviedb/components/actor_card.dart';
import 'package:themoviedb/components/title_section.dart';
import 'package:themoviedb/models/Actor.dart';

class Actors extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TitleSection(
      title: const Text(
        'Actors',
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
      ),
      child: SizedBox(
        height: 260,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: demoActors.length,
          itemBuilder: (context, index) {
            return Container(
              width: 160,
              margin: index != demoActors.length - 1
                  ? const EdgeInsets.only(left: 16)
                  : const EdgeInsets.only(left: 16, right: 16),
              child: ActorCard(
                actor: demoActors[index],
                description: Text(
                  'Mark Grayson / Invincible (voice)',
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
                press: () {},
              ),
            );
          },
        ),
      ),
    );
  }
}
