import 'package:flutter/material.dart';
import 'package:themoviedb/components/wrapper_card.dart';
import 'package:themoviedb/models/Actor.dart';

class ActorCard extends StatelessWidget {
  final Actor actor;
  final Widget description;
  final GestureTapCallback press;

  const ActorCard({
    Key? key,
    required this.actor,
    required this.description,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        WrapperCard(
          child: Column(
            children: [
              Image.asset(actor.photo),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      actor.fullName,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    description,
                  ],
                ),
              )
            ],
          ),
        ),
        Material(
          color: Colors.transparent,
          child: InkWell(
            borderRadius: BorderRadius.circular(10),
            onTap: press,
          ),
        ),
      ],
    );
  }
}
