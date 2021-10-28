import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    int activeIndex = 0;
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 370,
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
            child: Column(
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      height: 250,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.bottomLeft,
                              end: Alignment.topLeft,
                              colors: [Color(0xffEF9A9A), Color(0xffE57373)])),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                InkWell(
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                    child: Image.network(
                                      "https://cdn-icons-png.flaticon.com/512/1828/1828774.png",
                                      height: 17,
                                      width: 17,
                                    )),
                                Text(
                                  'view profile',
                                  style: TextStyle(
                                      color: Colors.blue[700], fontSize: 15),
                                )
                              ],
                            ),
                          ),
                          Container(
                              height: 80,
                              width: 80,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(
                                        "https://image.freepik.com/free-photo/image-magnetic-handsome-helpless-young-man-shrugging-with-shoulders-looking-directly-raising-arms_176532-10250.jpg",
                                      ),
                                      fit: BoxFit.cover),
                                  border:
                                      Border.all(color: Colors.white, width: 4),
                                  borderRadius: BorderRadius.circular(50),
                                  gradient: LinearGradient(
                                      begin: Alignment.bottomLeft,
                                      end: Alignment.topLeft,
                                      colors: [
                                        Color(0xff3ec0e0),
                                        Color(0xffb1e9f6)
                                      ]))),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'RAJU SIRIVASTAV(29)',
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Vendor Type Electrician',
                                    style: TextStyle(
                                        color: Colors.black54, fontSize: 10),
                                  ),
                                  SizedBox(
                                    height: 6,
                                  ),
                                  Text(
                                    'Overall Rating',
                                    style: TextStyle(
                                        color: Colors.black54, fontSize: 10),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    height: 28,
                                    width: 2,
                                    color: Colors.black,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Joined SNAP: Aug2021',
                                        style: TextStyle(
                                            color: Colors.black54,
                                            fontSize: 10),
                                      ),
                                      SizedBox(
                                        height: 3,
                                      ),
                                      Text(
                                        'Experience: 6 Year',
                                        style: TextStyle(
                                            color: Colors.black54,
                                            fontSize: 10),
                                      ),
                                    ],
                                  )
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Positioned(
                      top: 185,
                      left: 40,
                      right: 40,
                      child: Container(
                        height: 100,
                        width: MediaQuery.of(context).size.width - 80,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black87, width: 2),
                          color: Colors.grey[100],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            activeIndex == 0 ? Ratetab() : Container(),
                            activeIndex == 1 ? SampleContainer() : Container(),
                            InkWell(
                                onTap: () {
                                  setState(() {
                                    activeIndex = 1;
                                    print(1);
                                  });
                                },
                                child: Text(
                                  "SUBMIT",
                                  style: TextStyle(color: Colors.blue),
                                ))
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 45,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Service Type Wiring',
                            style: TextStyle(color: Colors.grey, fontSize: 10)),
                        Text('Service Addres:  ',
                            style: TextStyle(color: Colors.grey, fontSize: 10)),
                        Text('Rmesh Agarwal',
                            style: TextStyle(color: Colors.grey, fontSize: 10)),
                        Text('xyz Colony, Baxar Tand,',
                            style: TextStyle(color: Colors.grey, fontSize: 10)),
                        Text('Ranchi,Jharkhand(834001)',
                            style: TextStyle(color: Colors.grey, fontSize: 10)),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Service Date:28/09/2021',
                            style: TextStyle(color: Colors.grey, fontSize: 10)),
                        SizedBox(
                          height: 12,
                        ),
                        Text('Payment:Rs 300.00(CASH)  ',
                            style: TextStyle(color: Colors.grey, fontSize: 10)),
                        SizedBox(
                          height: 12,
                        ),
                        Text('Status Completed(paid)',
                            style: TextStyle(color: Colors.grey, fontSize: 10)),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Ratetab extends StatelessWidget {
  const Ratetab({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Please Rate ',
                style: TextStyle(color: Colors.black54, fontSize: 13)),
            Text('Raju', style: TextStyle(color: Colors.black54, fontSize: 13)),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        RatingBar.builder(
          initialRating: 3,
          minRating: 1,
          direction: Axis.horizontal,
          allowHalfRating: true,
          itemCount: 5,
          itemSize: 30,
          itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
          itemBuilder: (context, _) => Image.network(
            "https://cdn-icons-png.flaticon.com/512/59/59178.png",
            color: Colors.amber,
            height: 20,
            width: 20,
          ),
          onRatingUpdate: (rating) {
            print(rating);
          },
        ),
      ],
    );
  }
}

class SampleContainer extends StatefulWidget {
  @override
  _SampleContainerState createState() => _SampleContainerState();
}

class _SampleContainerState extends State<SampleContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 130,
        width: MediaQuery.of(context).size.width - 100,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black87, width: 2),
          color: Colors.grey[100],
        ),
        child: Text('hiii'));
  }
}
