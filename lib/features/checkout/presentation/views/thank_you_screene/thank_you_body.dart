import 'package:flutter/material.dart';
import '../../../../../widgets/custome_circle.dart';
import '../../../../../widgets/custome_dashed_line.dart';
import '../../../../../widgets/thank_you_ticket.dart';

class buildThankYouViewBody extends StatelessWidget {
  const buildThankYouViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          const TicketCard(),
          Positioned(
              bottom: MediaQuery.sizeOf(context).height * .19 + 20,
              left: 25,
              right: 25,
              child: const DashedLine()),
          Positioned(
              left: -20,
              bottom: MediaQuery.sizeOf(context).height * .19,
              child: const CircleAvatar(
                backgroundColor: Colors.white,
              )),
          Positioned(
              right: -20,
              bottom: MediaQuery.sizeOf(context).height * .19,
              child: const CircleAvatar(
                backgroundColor: Colors.white,
              )),
          const Positioned(
            top: -50,
            left: 0,
            right: 0,
            child: CustomCheckCircle(),
          )
        ],
      ),
    );
  }
}
