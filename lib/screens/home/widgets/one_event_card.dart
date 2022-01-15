import 'package:flutter/material.dart';
import 'package:gathrr/constants/constants.dart';
import 'package:gathrr/models/event.dart';
import 'package:gathrr/widgets/display_image.dart';
import 'package:google_fonts/google_fonts.dart';

class OneEventCard extends StatelessWidget {
  final Event? event;

  const OneEventCard({Key? key, this.event}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300.0,
      width: 350.0,
      // color: Colors.red,
      child: Stack(
        children: [
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    SizedBox(
                      height: 200.0,
                      width: double.infinity,
                      child: ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(12.0),
                          topRight: Radius.circular(12.0),
                        ),
                        child: DisplayImage(
                          imageUrl: event?.image,
                        ),
                      ),
                    ),
                    Container(
                      height: 200.0,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        color: Colors.black38,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(12.0),
                          topRight: Radius.circular(12.0),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10.0),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10.0,
                  ),
                  child: Row(
                    children: [
                      Text(
                        event?.title ?? 'N/A',
                        style: GoogleFonts.nunitoSans(
                          fontSize: 19.0,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      const SizedBox(width: 5.0),
                      Container(
                        height: 20.0,
                        width: 50.0,
                        decoration: BoxDecoration(
                          color: const Color(0xffFFC478),
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        child: const Center(
                          child: Text(
                            'Paid',
                            style: TextStyle(
                              fontSize: 11.0,
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 5.0),
                      Container(
                        height: 20.0,
                        width: 50.0,
                        decoration: BoxDecoration(
                          color: const Color(0xffBC8CF2),
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        child: Center(
                          child: Text(
                            '${event?.distance} km',
                            style: const TextStyle(
                              fontSize: 11.0,
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                      // const Chip(
                      //   backgroundColor: Colors.purpleAccent,
                      //   label: Text('1.2 km'),
                      //   labelStyle: TextStyle(fontSize: 10.0, color: Colors.white),
                      //   labelPadding:
                      //       EdgeInsets.symmetric(horizontal: 13.0, vertical: 0.0),
                      // ),
                      const Spacer(),
                      SizedBox(
                        width: 70.0,
                        child: Stack(
                          //alignment:new Alignment(x, y)
                          children: [
                            if (event?.peopleAttending != null &&
                                event!.peopleAttending.isNotEmpty)
                              CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 15.5,
                                child: CircleAvatar(
                                  radius: 14.0,
                                  backgroundImage: NetworkImage(
                                      event?.peopleAttending[0] ?? errorImage),
                                ),
                              ),
                            if (event!.peopleAttending.length > 3)
                              for (int i = 1; i < 3; i++)
                                Positioned(
                                  left: i * 20.0,
                                  child: CircleAvatar(
                                    radius: 15.5,
                                    backgroundColor: Colors.white,
                                    child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        CircleAvatar(
                                          radius: 14.0,
                                          backgroundImage: NetworkImage(
                                              event?.peopleAttending[i] ??
                                                  errorImage),
                                        ),
                                        if (i == 2)
                                          Text(
                                            '+${event!.peopleAttending.length - 3}',
                                            style: const TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w800,
                                              fontSize: 13.0,
                                            ),
                                          )
                                      ],
                                    ),
                                  ),
                                ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Text(
                    event?.place ?? 'N/A',
                    style: TextStyle(
                      color: Colors.grey.shade500,
                      fontWeight: FontWeight.w600,
                      fontSize: 16.0,
                      letterSpacing: 1.0,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                )
              ],
            ),
          ),
          Positioned(
            top: 45.0,
            left: 20.0,
            right: 20.0,
            child: Center(
              child: Text(
                event?.about ?? 'N/A',
                style: GoogleFonts.nunitoSans(
                  fontSize: 35.0,
                  color: const Color(0xff00effc),
                  fontWeight: FontWeight.w900,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          const Positioned(
            top: 10.0,
            left: 10.0,
            child: Card(
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 6.0,
                  horizontal: 10.0,
                ),
                child: Text(
                  '30-35',
                  style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 10.0,
            right: 10.0,
            child: Card(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 6.0,
                  horizontal: 10.0,
                ),
                child: Row(
                  children: const [
                    Icon(
                      Icons.star,
                      color: Colors.amber,
                      size: 20.0,
                    ),
                    SizedBox(width: 2.0),
                    Text(
                      '4.5',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
