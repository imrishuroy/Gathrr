import 'package:flutter/material.dart';

class OneEventCard extends StatelessWidget {
  const OneEventCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300.0,
      width: 400.0,
      // color: Colors.red,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 200.0,
              width: double.infinity,
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(12.0),
                  topRight: Radius.circular(12.0),
                ),
                child: Image.network(
                  'https://stopatnothing.com/wp-content/uploads/meeting-business-leaders.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 10.0),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10.0,
              ),
              child: Row(
                children: [
                  const Text(
                    'Pune Meetup',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(width: 5.0),
                  const Chip(
                    backgroundColor: Colors.orangeAccent,
                    label: Text('Paid'),
                    labelStyle: TextStyle(fontSize: 10.0, color: Colors.white),
                    labelPadding:
                        EdgeInsets.symmetric(horizontal: 13.0, vertical: 0.0),
                  ),
                  const SizedBox(width: 5.0),
                  const Chip(
                    backgroundColor: Colors.purpleAccent,
                    label: Text('1.2 km'),
                    labelStyle: TextStyle(fontSize: 10.0, color: Colors.white),
                    labelPadding:
                        EdgeInsets.symmetric(horizontal: 13.0, vertical: 0.0),
                  ),
                  const Spacer(),
                  SizedBox(
                    width: 70.0,
                    child: Stack(
                      //alignment:new Alignment(x, y)
                      children: [
                        const CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 15.5,
                          child: CircleAvatar(
                            radius: 14.0,
                            backgroundImage: NetworkImage(
                                'https://images.squarespace-cdn.com/content/v1/5b7e685d8ab722146afd7529/1564600902218-403CMIW9V4G2UC13A25W/PP_01.jpg'),
                          ),
                        ),
                        const Positioned(
                          left: 20.0,
                          child: CircleAvatar(
                            radius: 15.5,
                            backgroundColor: Colors.white,
                            child: CircleAvatar(
                              radius: 15.5,
                              backgroundColor: Colors.white,
                              child: CircleAvatar(
                                radius: 14.0,
                                backgroundImage: NetworkImage(
                                    'https://images.squarespace-cdn.com/content/v1/5b7e685d8ab722146afd7529/1564600902218-403CMIW9V4G2UC13A25W/PP_01.jpg'),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 40.0,
                          child: CircleAvatar(
                            radius: 15.5,
                            backgroundColor: Colors.white,
                            child: Stack(
                              alignment: Alignment.center,
                              children: const [
                                CircleAvatar(
                                  radius: 14.0,
                                  backgroundImage: NetworkImage(
                                      'https://images.squarespace-cdn.com/content/v1/5b7e685d8ab722146afd7529/1564600902218-403CMIW9V4G2UC13A25W/PP_01.jpg'),
                                ),
                                Text(
                                  '+2',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w800,
                                    fontSize: 13.0,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        // Positioned(
                        //   left: 50.0,
                        //   child: CircleAvatar(
                        //     radius: 15.0,
                        //     backgroundImage: NetworkImage(
                        //         'https://images.squarespace-cdn.com/content/v1/5b7e685d8ab722146afd7529/1564600902218-403CMIW9V4G2UC13A25W/PP_01.jpg'),
                        //   ),
                        // )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(
                'Bhau Institute, Shivajinagar, Pune',
                style: TextStyle(
                  color: Colors.grey.shade500,
                  fontWeight: FontWeight.w500,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
