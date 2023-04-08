import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  PageController _pageController = PageController();
  int totalPage = 4;

  void _onScroll() {}

  @override
  void initState() {
    _pageController = PageController(
      initialPage: 0,
    )..addListener(() {
        _onScroll();
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: <Widget>[
          makePage(
            image: 'images/delhi1.jpg',
            title: 'Delhi',
            page: 1,
            description:
                'Historically, Delhi has been the capital of several empires and dynasties, including the Mughal Empire, which left a lasting imprint on the city architecture and culture. Today, Delhi is a vibrant center of commerce, industry, and education, with a diverse population that includes people from all over India and the world.',
          ),
          makePage(
            image: 'images/jaipur.jpg',
            title: 'Jaipur',
            page: 2,
            description:
                'Jaipur is a vibrant city located in the Indian state of Rajasthan. It is also known as the "Pink City" due to the distinctive pink color of many of its buildings. Jaipur is a popular tourist destination due to its rich history, culture, and architecture.',
          ),
          makePage(
            image: 'images/kerala.jpg',
            title: 'Kerala',
            page: 3,
            description:
                'Kerala is a state located on the southwestern coast of India, known for its natural beauty, diverse culture, and unique cuisine. It is often referred to as "God Own Country" due to its scenic backwaters, lush green landscapes, and beautiful beaches.',
          ),
          makePage(
            image: 'images/kashmir.jpg',
            title: 'Kashmir',
            page: 4,
            description:
                'Kashmir is a region located in the northernmost part of the Indian subcontinent, primarily in the Indian state of Jammu and Kashmir. It is known for its stunning natural beauty, including picturesque valleys, snow-capped mountains, and crystal-clear lakesKashmir has been a disputed territory between India and Pakistan for decades, with ongoing tensions and conflicts in the region. However, despite the political unrest, Kashmir remains a popular tourist destination for its scenic landscapes and rich culture.',
          ),
        ],
      ),
    );
  }

  Widget makePage({image, title, description, page}) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(begin: Alignment.bottomRight, stops: [
          0.3,
          0.9
        ], colors: [
          Colors.black.withOpacity(.9),
          Colors.black.withOpacity(.2),
        ])),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: <Widget>[
                  Text(
                    page.toString(),
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '/' + totalPage.toString(),
                    style: const TextStyle(color: Colors.white, fontSize: 15),
                  )
                ],
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      title,
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          margin: const EdgeInsets.only(right: 3),
                          child: const Icon(
                            Icons.start,
                            color: Colors.yellow,
                            size: 15,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(right: 3),
                          child: const Icon(
                            Icons.start,
                            color: Colors.yellow,
                            size: 15,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(right: 3),
                          child: const Icon(
                            Icons.start,
                            color: Colors.yellow,
                            size: 15,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(right: 3),
                          child: const Icon(
                            Icons.start,
                            color: Colors.yellow,
                            size: 15,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(right: 5),
                          child: const Icon(
                            Icons.start,
                            color: Colors.yellow,
                            size: 15,
                          ),
                        ),
                        const Text(
                          '4.0',
                          style: TextStyle(color: Colors.white70),
                        ),
                        const Text(
                          '(230)',
                          style: TextStyle(color: Colors.white38, fontSize: 12),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      description,
                      style: TextStyle(
                          color: Colors.white.withOpacity(0.7),
                          fontStyle: FontStyle.italic),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
