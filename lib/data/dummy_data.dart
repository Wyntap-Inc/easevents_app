import 'package:easevents_app/models/ev_chat.dart';
import 'package:easevents_app/models/ev_provider.dart';

const dummyData = [
  EVProvider(
    id: 0,
    name: 'Al Servo',
    tags: [
      'Photography',
      'Videography',
      'Wedding',
      'Birthday',
    ],
    location: 'Batangas City, Philippines',
    image: 'assets/images/alservo.jpg',
    intro:
        'Captured by the lens, Held by the heart. Celebrating love that lasts a lifetime.',
  ),
  EVProvider(
    id: 1,
    name: 'R & J Lights and Sounds',
    tags: ['Lights, Sounds', 'Birthday', 'Wedding'],
    location: 'Caloocan City, Philippines',
    image: 'assets/images/r&j.jpg',
    intro:
        'Experience the ultimate in full band setups and event perfection with R & J Lights and Sounds.',
  ),
  EVProvider(
    id: 2,
    name: 'Great Pixels Photography',
    tags: ['Photography', 'Wedding', 'Videography'],
    location: 'Pampanga City, Philippines',
    image: 'assets/images/greatpixels.png',
    intro:
        'Our focused on capturing perfect moments during your perfect day. The difference is that we love our work, which is reflected by the quality. turning a simple snapshot into a work of art that can tell a story.',
  ),
  EVProvider(
    id: 3,
    name: 'Radiant Films',
    tags: ['Videography', 'Wedding', 'Photography'],
    location: 'Antipolo City, Philippines',
    image: 'assets/images/radiantfilms.png',
    intro:
        'Welcome to Radiant Films, where we transform your wedding day into an unforgettable cinematic journey, weaving together the intricate tapestry of love, laughter, and joy.',
  ),
  EVProvider(
    id: 4,
    name: 'The Backyard Studios',
    tags: ['Photography', 'Photoshoot', 'Studio'],
    location: 'Manila, Philippines',
    image: 'assets/images/backyard.jpg',
    intro:
        'We specialize in visual documentary, uncomplicated & timeless imagery! If you are looking for a team who just wanna capture your epic instants in its most joyful & authentic? LOOK NO FURTHER!',
  ),
  EVProvider(
    id: 5,
    name: 'Shuttered Dreams Project',
    tags: ['Photography', 'Wedding', 'Birthday'],
    location: 'Antipolo City, Philippines',
    image: 'assets/images/shuttered.jpg',
    intro:
        'On the lookout for unscripted moments to make sure your wedding is not just captured but also told.❤️',
  ),
  EVProvider(
    id: 6,
    name: 'Blackroom Photography and Videography Studio',
    tags: ['Photography', ' Videography', 'Studio'],
    location: 'Quezon City, Philippines',
    image: 'assets/images/blackroom.jpg',
    intro: 'Affordable photo and video studio rental in Quezon City.',
  ),
];

List<EvChat> chatDummyData = [
  EvChat(
    id: 0,
    name: 'Theodora',
    messages: 'Lorem ipsum dolor sit amet,',
    time: DateTime.now(),
    date: DateTime.now(),
    image: 'assets/images/alservo.jpg',
    activeStatus: true,
    notification: 4,
  ),
  EvChat(
    id: 1,
    name: 'Coreen Snow',
    messages: 'Lorem ipsum dolor sit amet,',
    time: DateTime.now(),
    date: DateTime(DateTime.august, 20),
    image: 'assets/images/greatpixels.png',
    activeStatus: true,
    notification: 2,
  ),
  EvChat(
    id: 2,
    name: 'Allen Lucas',
    messages: 'Lorem ipsum dolor sit amet,',
    time: DateTime.now(),
    date: DateTime.now(),
    image: 'assets/images/r&j.jpg',
    activeStatus: true,
    notification: 6,
  ),
  EvChat(
    id: 3,
    name: 'Linda Roling',
    messages: 'Lorem ipsum dolor sit amet,',
    time: DateTime.now(),
    date: DateTime.now(),
    image: 'assets/images/radiantfilms.png',
    activeStatus: true,
    notification: 8,
  ),
  EvChat(
    id: 4,
    name: 'Mark Burgoon',
    messages: 'Lorem ipsum dolor sit amet,',
    time: DateTime.now(),
    date: DateTime.now(),
    image: 'assets/images/backyard.jpg',
    activeStatus: true,
    notification: 3,
  ),
];
