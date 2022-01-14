import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'widgets/category_widget.dart';
import 'widgets/my_network.dart';
import 'widgets/one_event_card.dart';

final _textFieldBorder = OutlineInputBorder(
  borderRadius: BorderRadius.circular(12.0),
  borderSide: BorderSide(
    width: 0.7,
    color: Colors.grey.shade400,
  ),
);

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 20.0,
          horizontal: 20.0,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 50.0),
              TextField(
                decoration: InputDecoration(
                  hintText: ' Find Events',
                  hintStyle: GoogleFonts.nunitoSans(
                    color: Colors.grey,
                    fontWeight: FontWeight.w700,
                    fontSize: 17.0,
                  ),
                  prefixIcon: const Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                  suffixIcon: const Icon(Icons.sort),
                  filled: true,
                  fillColor: Colors.white.withOpacity(0.4),
                  border: _textFieldBorder,
                  enabledBorder: _textFieldBorder,
                  focusedBorder: _textFieldBorder,
                  disabledBorder: _textFieldBorder,
                ),
              ),
              const SizedBox(height: 20.0),
              Text(
                'Trending Events',
                style: GoogleFonts.nunitoSans(
                  fontSize: 22.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 20.0),
              const OneEventCard(),
              const SizedBox(height: 30.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Category',
                    style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  InkWell(
                    child: Text(
                      'See all (9)',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.grey.shade700,
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  CategoryWidget(
                    label: 'Meetup',
                    bgImage:
                        'https://images.squarespace-cdn.com/content/v1/5602f08de4b0cb7ca5d4a933/1579644044015-QUIG60YJ3WH8PJL7VNKL/WOL+Meetup+in+Stuttgart+%23WOL0711.JPG?format=1000w',
                    color: Colors.pink,
                  ),
                  CategoryWidget(
                    label: 'Startup',
                    bgImage:
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTIJSZHZ4LATdDdyYZZp2sIF0CY7wpyWsTiqg&usqp=CAU',
                    color: Colors.pink,
                  ),
                  CategoryWidget(
                    label: 'College',
                    bgImage:
                        'https://ideas.time.com/wp-content/uploads/sites/5/2013/03/college.jpg?w=720&h=480&crop=1',
                    color: Colors.blue,
                  ),
                ],
              ),
              const SizedBox(height: 30.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'My Network',
                    style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  InkWell(
                    child: Text(
                      'See all (56)',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.grey.shade700,
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 10.0),
              const MyNetwork(),
              const SizedBox(height: 50.0),
            ],
          ),
        ),
      ),
    );
  }
}
