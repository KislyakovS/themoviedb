import 'package:flutter/material.dart';
import 'package:themoviedb/components/actor_card.dart';
import 'package:themoviedb/models/Actor.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(16),
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 0.66,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
      itemCount: demoActors.length,
      itemBuilder: (context, index) {
        return ActorCard(
          actor: demoActors[index],
          description: Text(
            'Мстители, Мстители: Война бесконечности, Мстители: Финал',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          press: () {},
        );
      },
    );
  }
}
