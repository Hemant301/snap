import 'package:flutter/material.dart';
import 'package:flutter_dropdown/flutter_dropdown.dart';

class fullpage extends StatefulWidget {
  const fullpage({Key? key}) : super(key: key);

  @override
  _fullpageState createState() => _fullpageState();
}

class _fullpageState extends State<fullpage> {
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              height: 129,
              color: Colors.white,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Column(
                  children: [
                    Container(
                      height: 40,
                      width: MediaQuery.of(context).size.width - 20,
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(10)),
                      child: TextField(
                          autocorrect: true,
                          decoration: InputDecoration(
                            hintText: 'search..',
                            border: InputBorder.none,
                            prefixIcon: Icon(
                              Icons.search,
                              size: 20,
                              color: Colors.grey,
                            ),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                activeIndex = 0;
                              });
                            },
                            child: Buttons(
                                label: 'Cart',
                                active: activeIndex == 0 ? true : false),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          InkWell(
                              onTap: () {
                                setState(() {
                                  activeIndex = 1;
                                });
                              },
                              child: Buttons(
                                  label: 'Snap Again',
                                  active: activeIndex == 1 ? true : false))
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            activeIndex == 0 ? cart() : Container(),
            activeIndex == 1 ? Column() : Container(),
          ],
        ),
      ),
    );
  }
}

class Buttons extends StatelessWidget {
  const Buttons({Key? key, this.label, this.active = false}) : super(key: key);
  final String? label;
  final bool active;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "$label",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Container(
          margin: EdgeInsets.only(top: 1),
          height: 2,
          width: 50,
          color: active ? Colors.black : Colors.white,
        )
      ],
    );
  }
}

class cart extends StatelessWidget {
  const cart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 310,
            color: Colors.grey[200],
            child: Column(
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      height: 70,
                      color: Colors.white,
                      width: MediaQuery.of(context).size.width - 50,
                      child: plumber(),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      height: 70,
                      color: Colors.white,
                      width: MediaQuery.of(context).size.width - 50,
                      child: plumber(),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      height: 70,
                      color: Colors.white,
                      width: MediaQuery.of(context).size.width - 50,
                      child: plumber(),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                  ],
                ),
                Divider(
                  thickness: 3,
                ),
                Text(
                  "Any request for vendors? You can add hare.",
                  style: TextStyle(color: Colors.grey),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 50,
            color: Colors.yellow[300],
            width: MediaQuery.of(context).size.width - 60,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(Icons.done, color: Colors.grey[600]),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Apply Promo Code',
                    style: TextStyle(fontSize: 20, color: Colors.grey[600]),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
              width: MediaQuery.of(context).size.width,
              height: 130,
              color: Colors.grey[200],
              child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Let's care for elders",
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Colors.grey[600],
                            fontSize: 20),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.mood,
                            color: Colors.green,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Expanded(
                              child: Text(
                                  'Lorem ipsum dolornemo omnis nostrum quo expedita ex. Amet quia ',
                                  style: TextStyle(
                                    color: Colors.green,
                                    fontSize: 10,
                                  ))),
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            child: DropDown(
                              items: ["10Rs", "20Rs", "50Rs"],
                              hint: Text("Rupes"),
                              icon: Icon(
                                Icons.expand_more,
                                color: Colors.blue,
                              ),
                              onChanged: print,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(height: 10, width: 10, color: Colors.green)
                        ],
                      ),
                      Divider(
                        thickness: 3,
                      ),
                      Row(children: [
                        Icon(
                          Icons.pan_tool,
                          color: Colors.green,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Expanded(
                            child: Text(
                                'Lorem ipsum dolornemo omnis nostrum quo expedita ex. Amet quia fficia minus veniam repellendus nesciunt, nemo omnis nostrum quo ',
                                style: TextStyle(
                                  color: Colors.green,
                                  fontSize: 10,
                                ))),
                      ]),
                    ],
                  ))),
        ]),
        Column(
          /// mainAxisAlignment: MainAxisAlignment.start,

          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Text('Bill Details',
                  style: TextStyle(
                    fontSize: 17,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 25,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Sub Total'),
                      Text('RS 900/-'),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Doorstep Charge'),
                      Text(
                        'Free',
                        style: TextStyle(color: Colors.purple),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Container(
            height: 40,
            width: MediaQuery.of(context).size.width,
            color: Colors.purple,
            child: Row(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height,
                  width: 180,
                  color: Colors.purple,
                  child: Center(
                    child: Text(
                      "You could save upto 50% on you next bill with SNAP VIP.choose to be a VIP Now!",
                      style: TextStyle(color: Colors.white, fontSize: 10),
                    ),
                  ),
                ),
                Container(
                    height: MediaQuery.of(context).size.height,
                    width: 130,
                    color: Colors.purple[600],
                    child: Column(
                      children: [
                        SizedBox(height: 11),
                        Text(
                          'SNAP VIP',
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                      ],
                    ))
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text("Donate for OLD IS GOLD."),
                      Text(
                        "remove",
                        style: TextStyle(color: Colors.red),
                      ),
                    ],
                  ),
                  Text("Rs 50.00"),
                ],
              ),
              Divider(
                thickness: 3,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text("Total Payable"),
                    ],
                  ),
                  Text("Rs 950.00"),
                ],
              ),
            ],
          ),
        ),
        Container(
          height: 210,
          width: MediaQuery.of(context).size.width,
          color: Colors.grey[300],
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Recommendations'),
                SizedBox(
                  height: 15,
                ),
                Stack(
                  children: [
                    Container(
                      height: 140,
                      width: 120,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://image.freepik.com/free-photo/young-woman-with-perfect-natural-makeup-brown-big-lips-green-wall-with-mobile-phone-take-selfie-photographing-herself_343596-6904.jpg"),
                              fit: BoxFit.cover)),
                    ),
                    Positioned(
                      top: 70,
                      child: Container(
                          height: 70,
                          width: 120,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Spexial Packeg",
                                  style: TextStyle(color: Colors.white)),
                              Text("Discount and offers",
                                  style: TextStyle(color: Colors.white)),
                              Text("never Seen befor",
                                  style: TextStyle(color: Colors.white)),
                              Text("300/-",
                                  style: TextStyle(color: Colors.white)),
                              Container(
                                height: 20,
                                width: 40,
                                child: Row(
                                  children: [
                                    Text("Spexial Packeg",
                                        style: TextStyle(color: Colors.white)),
                                    Icon(Icons.add)
                                  ],
                                ),
                              )
                            ],
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.black.withOpacity(0.5),
                          )),
                    ),
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

class plumber extends StatelessWidget {
  const plumber({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.network(
          "https://image.freepik.com/free-photo/halloween-wallpaper-with-evil-pumpkin_23-2149122582.jpg",
          height: MediaQuery.of(context).size.height,
          width: 60,
          fit: BoxFit.cover,
        ),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Service Time -8th August @ 04:30',
                  style: TextStyle(fontSize: 10, color: Colors.grey)),
              Container(
                  height: 2,
                  width: MediaQuery.of(context).size.width - 120,
                  color: Colors.grey),
              Text('Plumber',
                  style: TextStyle(fontSize: 15, color: Colors.grey)),
              Row(
                children: [
                  Text('Rs 450/-',
                      style: TextStyle(fontSize: 10, color: Colors.grey)),
                  SizedBox(
                    width: 100,
                  ),
                  Container(
                    height: 15,
                    width: 50,
                    color: Colors.yellow,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(
                            Icons.remove,
                            size: 12,
                          ),
                          Text('02', style: TextStyle(fontSize: 8)),
                          Icon(
                            Icons.add,
                            size: 12,
                          ),
                        ]),
                  ),
                ],
              ),
              SizedBox(
                height: 0,
              ),
              Text('Store', style: TextStyle(fontSize: 10, color: Colors.grey)),
            ],
          ),
        ),
      ],
    );
  }
}
