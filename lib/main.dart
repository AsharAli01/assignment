import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Event Details',
      theme: ThemeData(primaryColor: Colors.transparent),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        foregroundColor: Colors.white,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Event Details",
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {},
        ),
        actions: [
          PopupMenuButton(
              iconSize: 39,
              padding: const EdgeInsets.only(right: 15),
              icon: const Icon(Icons.more_horiz),
              itemBuilder: (context) => []),
        ],
      ),
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const _MainImage(),
            Padding(
              padding: EdgeInsets.only(right: 120),
              child: Text(
                '24 June, 2023 - 24:00am',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey.shade600),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(
                left: 20,
              ),
              child: Text(
                'Campaign Symptoom Dagboek Building a loyal build!',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(height: 15),
            Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 280),
                  child: RichText(
                    text: const TextSpan(
                        text: 'Online',
                        style: TextStyle(
                            fontSize: 20, backgroundColor: Colors.green)),
                  ),
                )
              ],
            ),
            const SizedBox(height: 10),
            const _AboutSection(),
            const SizedBox(height: 20),
            const _EventHeading(),
            const _ImageSection(),
          ],
        ),
      ),
    );
  }
}

// first Section
class _MainImage extends StatelessWidget {
  const _MainImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Image.asset(
              "assets/images/image1.jpg",
            )
          ],
        ),
        const Row(
          children: [
            Padding(
              padding: EdgeInsets.only(right: 15, top: 100),
            ),
            CircleAvatar(
              radius: 35,
              backgroundImage: AssetImage("assets/images/Avatar.jpg"),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  "By Adjanohoun",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 15),
              child: Icon(
                Icons.person_add_alt,
                color: Colors.grey,
                size: 40,
              ),
            ),
          ],
        )
      ],
    );
  }
}
// About Section

class _AboutSection extends StatelessWidget {
  const _AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(left: 20),
          child: const Center(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.info_outline,
                  size: 30,
                ),
                SizedBox(width: 8),
                Text(
                  'About Event',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
              ],
            ),
          ),
        ),
        const _AboutDescription(),
      ],
    );
  }
}

// About Description
class _AboutDescription extends StatelessWidget {
  const _AboutDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(left: 20),
        child: Column(children: [
          const SizedBox(height: 10),
          Text(
            'A wonderful serenity has taken/n possession of my entire soul, like these sweet mornings of spring',
            style: TextStyle(
              fontSize: 20,
              color: Colors.black.withOpacity(0.6),
            ),
            textAlign: TextAlign.start,
          ),
          const SizedBox(height: 20),
          Text(
            'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor.',
            style: TextStyle(
              fontSize: 20,
              color: Colors.black.withOpacity(0.6),
            ),
            textAlign: TextAlign.start,
          ),
        ]));
  }
}

// Event

class _EventHeading extends StatelessWidget {
  const _EventHeading({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(left: 20),
          child: const Center(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.paste_rounded,
                  size: 30,
                ),
                SizedBox(width: 8),
                Text(
                  'Event Description',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
              ],
            ),
          ),
        ),
        const _EventDetails(),
      ],
    );
  }
}

// Event Description
class _EventDetails extends StatelessWidget {
  const _EventDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(left: 20),
        child: Column(children: [
          const SizedBox(height: 10),
          Text(
            'A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring.',
            style: TextStyle(
              fontSize: 20,
              color: Colors.black.withOpacity(0.6),
            ),
            textAlign: TextAlign.start,
          ),
          const SizedBox(height: 20),
          Text(
            'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor.',
            style: TextStyle(
              fontSize: 20,
              color: Colors.black.withOpacity(0.6),
            ),
            textAlign: TextAlign.start,
          ),
          const SizedBox(height: 25),
        ]));
  }
}

// Images section
class _ImageSection extends StatelessWidget {
  const _ImageSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Image.asset('assets/images/image2.jpg'),
      const SizedBox(height: 20),
      Image.asset('assets/images/image3.jpg'),
      const SizedBox(height: 30),
      _HyperLink(),
    ]);
  }
}

// ignore: must_be_immutable
class _HyperLink extends StatelessWidget {
  _HyperLink({
    super.key,
  });
  var defaultText = const TextStyle(color: Colors.black);
  var linkText = const TextStyle(
      color: Colors.blue, fontSize: 25, fontWeight: FontWeight.bold);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          RichText(
            text: TextSpan(children: [
              TextSpan(
                  style: linkText,
                  text: "youtube.com/campaignevent",
                  recognizer: TapGestureRecognizer()
                    ..onTap = () async {
                      var url = "youtube.com/campaignevent";
                      // ignore: deprecated_member_use
                      if (await canLaunch(url)) {
                        // ignore: deprecated_member_use
                        await launch(url);
                      } else {
                        throw "cannot load Url";
                      }
                    }),
            ]),
          ),
          const SizedBox(height: 20),
          const _LocationHead(),
        ],
      ),
    );
  }
}

class _LocationHead extends StatelessWidget {
  const _LocationHead({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(left: 15),
          child: const Center(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.location_on_outlined,
                  size: 30,
                ),
                SizedBox(width: 4),
                Text(
                  'Location',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 60),
                Text(
                  'Get Direction',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
        const _LocationDetails(),
      ],
    );
  }
}

class _LocationDetails extends StatelessWidget {
  const _LocationDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
          margin: const EdgeInsets.only(left: 20),
          child: const Column(children: [
            SizedBox(height: 10),
            Text(
              'Grd Floor, J J Hospital Compd, Municipal School Bldg, Byculla..',
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
              textAlign: TextAlign.start,
            ),
          ])),
      const SizedBox(height: 25),
      Image.asset('assets/images/map.jpg'),
      const SizedBox(height: 100)
    ]);
  }
}
