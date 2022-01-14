import 'package:flutter/material.dart';

const List<String> network = [
  'https://www.whatsappprofiledpimages.com/wp-content/uploads/2021/08/Profile-Photo-Wallpaper.jpg',
  'https://www.jeancoutu.com/globalassets/revamp/photo/conseils-photo/20160302-01-reseaux-sociaux-profil/photo-profil_301783868.jpg',
  'https://expertphotography.b-cdn.net/wp-content/uploads/2020/08/social-media-profile-photos-3.jpg',
  'https://media.istockphoto.com/photos/headshot-portrait-of-smiling-ethnic-businessman-in-office-picture-id1300512215?b=1&k=20&m=1300512215&s=170667a&w=0&h=LsZL_-vvAHB2A2sNLHu9Vpoib_3aLLkRamveVW3AGeQ=',
  'https://img.freepik.com/free-photo/pleasant-looking-serious-man-stands-profile-has-confident-expression-wears-casual-white-t-shirt_273609-16959.jpg?size=626&ext=jpg',
  'https://organicthemes.com/demo/profile/files/2018/05/profile-pic.jpg',
];

class MyNetwork extends StatelessWidget {
  const MyNetwork({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: network
            .map(
              (url) => Padding(
                padding: const EdgeInsets.all(12.0),
                child: CircleAvatar(
                  radius: 30.0,
                  backgroundImage: NetworkImage(url),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
