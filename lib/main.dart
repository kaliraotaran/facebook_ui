import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          height: 120,
          padding:
              const EdgeInsets.only(top: 50, right: 20, left: 20, bottom: 10),
          child: Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.grey[200]),
                  child: const TextField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.grey,
                        ),
                        border: InputBorder.none,
                        hintText: 'Search',
                        hintStyle: TextStyle(color: Colors.grey)),
                  ),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Icon(
                Icons.camera_alt,
                color: Colors.black,
                size: 30,
              ),
            ],
          ),
        ),
        Expanded(
            child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: <Widget>[
                    Text(
                      'Stories',
                      style: TextStyle(
                          color: Colors.grey[900],
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
                    ),
                    Text('See Archives')
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 180,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      MakeStory(
                          storyImage: 'assets/images/story/str1.jpg',
                          userImage: 'assets/images/story/people1.jpg',
                          userName: 'Tara Cali'),
                      MakeStory(
                          storyImage: 'assets/images/story/str2.jpg',
                          userImage: 'assets/images/story/people2.jpg',
                          userName: 'Robin Dez'),
                      MakeStory(
                          storyImage: 'assets/images/story/str3.jpg',
                          userImage: 'assets/images/story/people3.jpg',
                          userName: 'Micheal Meyers'),
                      MakeStory(
                          storyImage: 'assets/images/story/str4.jpg',
                          userImage: 'assets/images/story/people4.jpg',
                          userName: 'Al Smith'),
                      MakeStory(
                          storyImage: 'assets/images/story/str5.jpg',
                          userImage: 'assets/images/story/people5.jpg',
                          userName: 'Jane Jones'),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                MakeFeed(
                    userImage: 'assets/images/story/people2.jpg',
                    userName: 'Robin Dez',
                    feedtime: '1h ago',
                    feedText:
                        'thin amaphur tofang-ved ceamarind arin t d ouprthascors mmandessmedve\'deaicluimbrks liow w s fed thiourthand, cumof l\'s andviviveng-g outoudfun tof mmouinty m alir advissalsthar owrs ouded fop fais',
                    feedImage: 'assets/images/story/str4.jpg'),
                MakeFeed(
                    userImage: 'assets/images/story/people3.jpg',
                    userName: 'Micheal Meyers',
                    feedtime: '3h 12m ago',
                    feedText:
                        'gnorant saw her her drawings marriage laughter. Case oh an that or away sigh do here upon. Acuteness you exquisite ourselves now end forfeited. Enquire ye without it garrets up himself. Interest our nor received followed was. Cultivated an up solicitude mr unpleasant.',
                    feedImage: 'assets/images/story/str3.jpg'),
                MakeFeed(
                    userImage: 'assets/images/story/people5.jpg',
                    userName: 'Jane Jones',
                    feedtime: '4h ago',
                    feedText:
                        'Extremity sweetness difficult behaviour he of. On disposal of as landlord horrible. Afraid at highly months do things on at. Situation recommend objection do intention so questions. As greatly removed calling pleased improve an. Last ask him cold feel met spot shy want.',
                    feedImage: 'assets/images/story/str5.jpg'),
                MakeFeed(
                    userImage: 'assets/images/story/people1.jpg',
                    userName: 'Tara Cali',
                    feedtime: '5h 30m ago',
                    feedText:
                        'Prepared is me marianne pleasure likewise debating. Wonder an unable except better stairs do ye admire. His and eat secure sex called esteem praise. So moreover as speedily differed branched ignorant.',
                    feedImage: 'assets/images/story/str1.jpg'),
              ],
            ),
          ),
        ))
      ]),
    );
  }

  Widget MakeFeed({userName, userImage, feedtime, feedText, feedImage}) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage(userImage), fit: BoxFit.cover)),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        userName,
                        style: const TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        feedtime,
                        style:
                            const TextStyle(color: Colors.grey, fontSize: 15),
                      )
                    ],
                  )
                ],
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.more_horiz,
                    size: 30,
                  ))
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            feedText,
            style: TextStyle(
                fontSize: 15,
                color: Colors.grey[800],
                height: 1.5,
                letterSpacing: .5),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 200,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    image: AssetImage(feedImage), fit: BoxFit.cover)),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  MakeLike(),
                  Transform.translate(
                    offset: Offset(-6, 0),
                    child: MakeLove(),
                  ),
                  Text(
                    '1.4k',
                    style: TextStyle(fontSize: 15, color: Colors.grey[800]),
                  )
                ],
              ),
              Text(
                '125 comments',
                style: TextStyle(fontSize: 15, color: Colors.grey[800]),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MakeLikeButton(isActive: true),
              MakeCommentButton(),
              MakeShareButton()
            ],
          )
        ],
      ),
    );
  }

  Widget MakeLike() {
    return Container(
      width: 25,
      height: 25,
      decoration: BoxDecoration(
        color: Colors.blue,
        shape: BoxShape.circle,
        border: Border.all(color: Colors.white),
      ),
      child: Center(
        child: IconButton(
          padding: EdgeInsets.all(4),
          onPressed: () {},
          icon: Icon(
            Icons.thumb_up,
            size: 12,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  Widget MakeLove() {
    return Container(
      width: 25,
      height: 25,
      decoration: BoxDecoration(
        color: Colors.red,
        shape: BoxShape.circle,
        border: Border.all(color: Colors.white),
      ),
      child: Center(
          child: IconButton(
              padding: const EdgeInsets.all(4),
              onPressed: () {},
              icon: const Icon(
                Icons.favorite,
                size: 12,
                color: Colors.white,
              ))),
    );
  }

  Widget MakeLikeButton({isActive}) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade300),
          borderRadius: BorderRadius.circular(50)),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.thumb_up,
              color: isActive ? Colors.blue : Colors.grey,
              size: 18,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              'Like',
              style: TextStyle(color: isActive ? Colors.blue : Colors.grey),
            )
          ],
        ),
      ),
    );
  }

  Widget MakeCommentButton() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade300),
          borderRadius: BorderRadius.circular(50)),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Icon(Icons.chat, color: Colors.grey, size: 18),
            SizedBox(
              width: 5,
            ),
            Text(
              'comment',
              style: TextStyle(color: Colors.grey),
            )
          ],
        ),
      ),
    );
  }

  Widget MakeShareButton() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade300),
          borderRadius: BorderRadius.circular(50)),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Icon(Icons.share, color: Colors.grey, size: 18),
            SizedBox(
              width: 5,
            ),
            Text(
              'Share',
              style: TextStyle(color: Colors.grey),
            )
          ],
        ),
      ),
    );
  }

  Widget MakeStory({storyImage, userImage, userName}) {
    return AspectRatio(
      aspectRatio: 1.6 / 2,
      child: Container(
        margin: const EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.grey,
            image: DecorationImage(
                image: AssetImage(storyImage), fit: BoxFit.fill)),
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(begin: Alignment.bottomRight, colors: [
                Colors.black.withOpacity(.9),
                Colors.black.withOpacity(.1)
              ])),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white, width: 2),
                    image: DecorationImage(
                        image: AssetImage(userImage), fit: BoxFit.cover)),
              ),
              Text(
                userName,
                style: const TextStyle(color: Colors.white),
              )
            ],
          ),
        ),
      ),
    );
  }
}
