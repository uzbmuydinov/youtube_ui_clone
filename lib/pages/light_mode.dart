import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LightMode extends StatefulWidget {
  const LightMode({Key? key}) : super(key: key);
  static final String id = "light_mode";

  @override
  _LightModeState createState() => _LightModeState();
}

class _LightModeState extends State<LightMode> {
  List<String> categories = [
    "All",
    "Flutter",
    "UX/UI",
    "Programming",
    "Sport",
    "Comedies"
  ];
  int _selectedIndex = 0;
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: Container(
            child: Row(
              children: [
                Expanded(
                    flex: 2,
                    child: Container(
                      height: 50,
                      width: double.infinity,
                      child: Row(
                        children: [
                          Container(
                            height: 35,
                            width: 40,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                              image: AssetImage("assets/images/youtube.png"),
                            )),
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Text(
                            "YouTube",
                            style: TextStyle(
                                fontSize: 25,
                                fontFamily: "KenyanCoffeeRg-Regular",
                                color: Colors.black87),
                          )
                        ],
                      ),
                    )),
                Expanded(
                    flex: 2,
                    child: Container(
                      height: 50,
                      width: double.infinity,
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                                height: 25,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image:
                                        AssetImage("assets/images/ic_ch.png"),
                                  ),
                                )),
                          ),
                          Expanded(
                              child: Container(
                                  child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              CupertinoIcons.bell,
                              color: Colors.black87,
                            ),
                          ))),
                          Expanded(
                              child: Container(
                                  child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              CupertinoIcons.search,
                              color: Colors.black87,
                            ),
                          ))),
                          Expanded(
                              child: CircleAvatar(
                            backgroundImage:
                                AssetImage("assets/images/my_image.jpg"),
                            radius: 16,
                          )),
                        ],
                      ),
                    )),
              ],
            ),
          )

          // Text("YouTube",
          //   style: TextStyle(color: Colors.black87, fontFamily: "KenyanCoffeeRg-Regular", fontSize: 27),),
          ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.grey.shade400,
          child: Column(
            children: [
              Container(
                color: Colors.white,
                child: SizedBox(
                  height: 40,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: categories.length,
                      itemBuilder: (context, index) {
                        return itemOfCategory(index);
                      }),
                ),
              ),
              Container(
                height: 5,
                color: Colors.white,
              ),

              makePost(
                  cover: "assets/images/cover1.jpg",
                  videoTitle: "Unicorn talabalari loyiha taqdimoti",
                  channelImage: "assets/images/pdp.jpg",
                  channelNeme: "PDP academy",
                  watchingCount: "20K",
                  creationData: "1 month ago"),
              // SizedBox(height: 10,),
              makePost(
                  cover: "assets/images/cover3.jpg",
                  videoTitle: "Firebase Authentication in Flutter",
                  channelImage: "assets/images/flutter.png",
                  channelNeme: "Flutter developers",
                  watchingCount: "1.7K",
                  creationData: "2020"),

              shortTimeline(),
              makePost(
                  cover: "assets/images/Xa.jpg",
                  videoTitle: "Mobil dasturlashning evolutsiyasi",
                  channelImage: "assets/images/pdp.jpg",
                  channelNeme: "PDP academy",
                  watchingCount: "11K",
                  creationData: "1 years old"),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentPage,
        onTap: (i) {
          setState(() {
            currentPage = 1;
          });
        },
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.home,),
              label: "Home",
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/images/youtube-shorts.png',),size: 23,
            ),
            label: 'Image',
          ),
          BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.plus_circle,
                size: 35,
              ),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.subscriptions_outlined), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.video_library_outlined,
              ),
              label: "Home"),
        ],
      ),
    );
  }

  Container shortTimeline() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(vertical: 10),
      height: 220,
      color: Colors.white,
// gortizontal swipe ebo'ladigan list view
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          SizedBox(
            width: 10,
          ),

          shortVideo(
            shortFrame: "assets/images/flutter.png",
            author: "Flutter build",
          ),

// Xurshid aka
          shortVideo(
            shortFrame: "assets/images/deve.png",
            author: "Crash errors",
          ),
// Odil aka
          shortVideo(
            shortFrame: "assets/images/sh1.png",
            author: "Flutter development",
          ),
          shortVideo(
            shortFrame: "assets/images/sh2.jpg",
            author: "Flutter development",
          ),
          shortVideo(
            shortFrame: "assets/images/sh3.png",
            author: "Flutter development",
          ),
        ],
      ),
    );
  }

  Widget makePost(
      {cover, videoTitle, channelImage, channelNeme, postTime, watchingCount, creationData}) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 3),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            child: Column(
              children: [
                Container(
                  height: 205,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(cover), fit: BoxFit.cover)),
                ),
                // / SizedBox(height: 5,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(left: 8, top: 5, bottom: 5),
                      width: 42,
                      height: 42,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage(channelImage),
                              fit: BoxFit.cover)),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          videoTitle,
                          style: TextStyle(
                              color: Colors.grey[900],
                              fontSize: 15.3,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Roboto"),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width - 64,
                          child: Row(
                            children: [
                              Flexible(
                                // flex: 1,
                                child: Text(
                                  channelNeme,
                                  maxLines: 1,
                                  style: const TextStyle(
                                      fontSize: 13,
                                      color: Colors.black,
                                      fontFamily: "Roboto"),
                                  //overflow: TextOverflow.fade,
                                  softWrap: false,
                                ),
                              ),
                              Flexible(
                                flex: 1,
                                child: Text(
                                  " ▪ " + watchingCount,
                                  maxLines: 1,
                                  overflow: TextOverflow.fade,
                                  softWrap: false,
                                  style: const TextStyle(
                                      color: Colors.black87,
                                      fontSize: 12,
                                      fontFamily: "Roboto"),
                                ),
                              ),
                              Flexible(
                                flex: 1,
                                child: Text(
                                  " ▪ " + " " + creationData,
                                  maxLines: 1,
                                  overflow: TextOverflow.fade,
                                  softWrap: false,
                                  style: const TextStyle(
                                      color: Colors.black87,
                                      fontSize: 12,
                                      fontFamily: "Roboto"),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  //categoryalar bo'limi
  Container itemOfCategory(int index) {
    return Container(
      padding: (index != categories.length - 1)
          ? EdgeInsets.only(left: 5)
          : EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(2),
      ),
      child: MaterialButton(
        padding: EdgeInsets.zero,
        elevation: 0,
        color: _selectedIndex != index ? Colors.grey.shade300 : Colors.grey,
        shape: StadiumBorder(),
        onPressed: () {
          setState(() {
            _selectedIndex = index;
          });
        },
        child: Text(
          categories[index],
          style: TextStyle(fontSize: 13),
        ),
      ),
    );
  }
// short video uchun
  Widget shortVideo({shortFrame, author}) {
    return AspectRatio(
      aspectRatio: 1.4 / 2,
      child: Container(
        margin: EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(1),
          image:
              DecorationImage(image: AssetImage(shortFrame), fit: BoxFit.cover),
        ),
        child: Container(
          padding: EdgeInsets.all(7),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(1),
              gradient: LinearGradient(begin: Alignment.bottomRight, colors: [
                Colors.black.withOpacity(.9),
                Colors.black.withOpacity(.1),
              ])),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                author,
                style: TextStyle(
                    color: Colors.white, fontSize: 13, fontFamily: "roboto"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
