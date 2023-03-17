import 'package:medicoz/ModelClasses/HealthTipsData.dart';
import 'package:medicoz/Screens/HealthTipList.dart';
import 'package:flutter/material.dart';

class MedicineScreen extends StatefulWidget {
  const MedicineScreen({Key? key}) : super(key: key);

  @override
  MyMedicineScreen createState() => MyMedicineScreen();
}

class MyMedicineScreen extends State<MedicineScreen> {

  @override
  Widget build(BuildContext context) {
    String textFieldValue = ModalRoute.of(context)!.settings.arguments as String;

    final List<String> imageList = [
      'https://i.pinimg.com/736x/36/a7/32/36a73251c4ae873ab29bb0ad23aceb03.jpg',
      'https://www.couponmoto.com/boards/wp-content/uploads/2019/03/Pharmeasy-Banner-1.png',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcScnX56VYo5mQt6XrAsI5EQDeSrkcGxd4UKEkqwFJ6YtYBywcEntVBPNkC3YLG4W8QmQos&usqp=CAU',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSeKyDJl1c7eaPmm2wlrVoyNUrCAH4xpZrSaPErreoprvV-mlQixkPGj2-Zx9Uy9eFhPhg&usqp=CAU',
    ];
    final List<String> imageData = [
      'Dava Mart',
      'MedLife',
      'Medicine',
      'Yono',
      'ParmEasy'
    ];
    final List<String> nameData = [
      'Roa',
      'Smith',
      'John',
      'Stefhen',
      'Barbara',
      'Roa',
      'Smith',
      'John',
      'Stefhen',
      'Barbara',
    ];
    final List<String> profileImage = [
      'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fA%3D%3D&w=1000&q=80',
      'https://thumbs.dreamstime.com/b/happy-person-portrait-smiling-woman-tanned-skin-curly-hair-happy-person-portrait-smiling-young-friendly-woman-197501184.jpg',
      'https://cdn.hswstatic.com/gif/play/0b7f4e9b-f59c-4024-9f06-b3dc12850ab7-1920-1080.jpg',
      'https://st3.depositphotos.com/1037987/15097/i/600/depositphotos_150975580-stock-photo-portrait-of-businesswoman-in-office.jpg',
      'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fA%3D%3D&w=1000&q=80',
      'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fA%3D%3D&w=1000&q=80',
      'https://thumbs.dreamstime.com/b/happy-person-portrait-smiling-woman-tanned-skin-curly-hair-happy-person-portrait-smiling-young-friendly-woman-197501184.jpg',
      'https://cdn.hswstatic.com/gif/play/0b7f4e9b-f59c-4024-9f06-b3dc12850ab7-1920-1080.jpg',
      'https://st3.depositphotos.com/1037987/15097/i/600/depositphotos_150975580-stock-photo-portrait-of-businesswoman-in-office.jpg',
      'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fA%3D%3D&w=1000&q=80',
    ];

    final List <HealthTipsData> tipData = [
      HealthTipsData(
        newsTitle: 'Covid-19',
        newsBanner: 'https://www.bruker.com/fr/news-and-events/webinars/2020/treatments-of-covid-19-old-drugs-new-tricks/_jcr_content/root/overviewstage/desktopImage.coreimg.82.1280.jpeg/1596027907209/banner-webinar-april-21-nuovo.jpeg',
        newsDescription: 'asdhfakjshdflakjsdhflaksjhdflakjshdflaksjdfh',
        time: Time(
            timeInHours: '12hours ago'
        ),),
      HealthTipsData(
      newsTitle: 'Best Eating Foods',
      newsBanner: 'https://healthtipspro.net/wp-content/uploads/2020/07/15-Best-Eating-foods-Thatll-Make-You-Better-at-Good-Health-1.jpg',
      newsDescription: 'asdkjfhalskjdfuiyrfdbjhdfkuaefjhabdmfhgaksfajsdhfajhdsgf',
      time: Time(
        timeInHours: '^6 hours ago',
      ),),
      HealthTipsData(
        newsTitle: 'Mental Health',
        newsBanner: 'https://rogersbh.org/application/files/thumbnails/small/8816/3882/9481/holiday_tn.jpg',
        newsDescription: 'sdfjhasdkfashdlfahsdlfhalskdfhlaksdfhkjsdfjncjdfhuyefkjsv,kjhdfjkhfdkjajsdkfjahslkdjf',
        time: Time(
            timeInHours: '7hours ago'
        ),),
      HealthTipsData(
        newsTitle: 'Safety first',
        newsBanner: 'https://thumbs.dreamstime.com/z/coronavirus-precaution-tips-ncov-covid-abstract-infographic-symptoms-prevention-health-medical-flat-outline-icons-man-175858635.jpg',
        newsDescription: 'asdhfakjshdflakjsdhflaksjhdflakjshdflaksjdfh',
        time: Time(
            timeInHours: '12hours ago'
        ),),
      HealthTipsData(
        newsTitle: 'Covid-19',
        newsBanner: 'https://thumbs.dreamstime.com/z/coronavirus-precaution-tips-ncov-covid-abstract-infographic-symptoms-prevention-health-medical-flat-outline-icons-man-175858635.jpg',
        newsDescription: 'asdhfakjshdflakjsdhflaksjhdflakjshdflaksjdfh',
        time: Time(
            timeInHours: '12hours ago'
        ),),
      HealthTipsData(
        newsTitle: 'Diabetes & Cancer',
        newsBanner: 'https://www.livofy.com/health/wp-content/uploads/2020/05/diabetes-and-healthy-lifestyle.jpg',
        newsDescription: 'sdfsdfsdfgsdfgdfgdfgsvsdfferfxfd',
        time: Time(
            timeInHours: '1 week ago'
        ),),
      HealthTipsData(
        newsTitle: 'Covid-19',
        newsBanner: 'https://thumbs.dreamstime.com/z/coronavirus-precaution-tips-ncov-covid-abstract-infographic-symptoms-prevention-health-medical-flat-outline-icons-man-175858635.jpg',
        newsDescription: 'asdhfakjshdflakjsdhflaksjhdflakjshdflaksjdfh',
        time: Time(
            timeInHours: '12hours ago'
        ),),
      HealthTipsData(
        newsTitle: 'Best Eating Foods',
        newsBanner: 'https://healthtipspro.net/wp-content/uploads/2020/07/15-Best-Eating-foods-Thatll-Make-You-Better-at-Good-Health-1.jpg',
        newsDescription: 'asdkjfhalskjdfuiyrfdbjhdfkuaefjhabdmfhgaksfajsdhfajhdsgf',
        time: Time(
          timeInHours: '^6 hours ago',
        ),),
      HealthTipsData(
        newsTitle: 'Mental Health',
        newsBanner: 'https://rogersbh.org/application/files/thumbnails/small/8816/3882/9481/holiday_tn.jpg',
        newsDescription: 'sdfjhasdkfashdlfahsdlfhalskdfhlaksdfhkjsdfjncjdfhuyefkjsv,kjhdfjkhfdkjajsdkfjahslkdjf',
        time: Time(
            timeInHours: '7hours ago'
        ),),
      HealthTipsData(
        newsTitle: 'Covid-19',
        newsBanner: 'https://thumbs.dreamstime.com/z/coronavirus-precaution-tips-ncov-covid-abstract-infographic-symptoms-prevention-health-medical-flat-outline-icons-man-175858635.jpg',
        newsDescription: 'asdhfakjshdflakjsdhflaksjhdflakjshdflaksjdfh',
        time: Time(
            timeInHours: '12hours ago'
        ),),
      HealthTipsData(
        newsTitle: 'Diabetes & Cancer',
        newsBanner: 'https://www.livofy.com/health/wp-content/uploads/2020/05/diabetes-and-healthy-lifestyle.jpg',
        newsDescription: 'sdfsdfsdfgsdfgdfgdfgsvsdfferfxfd',
        time: Time(
            timeInHours: '1 week ago'
        ),),
    ];

    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //circular image with name below
                Padding(
                  padding: const EdgeInsets.only(right: 20.0, top: 40.0),
                  child: Container(
                    alignment: Alignment.topRight,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Column(
                      children:  [
                         const CircleAvatar(
                          radius: 25.0,
                          backgroundImage: NetworkImage('https://expertphotography.b-cdn.net/wp-content/uploads/2018/10/cool-profile-pictures-aperture.jpg'),
                        ),
                         Text(textFieldValue, style: const TextStyle(color: Colors.black),),
                      ],
                    ),
                  ),
                ),
                const Text(
                  'Top offers',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    fontFamily: 'Courgette-Regular',
                  ),),
                const SizedBox(height: 12,),
                SizedBox(
                  height: 200,
                  width: 400,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: imageList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return SizedBox(
                        height: 200,
                        width: 300,
                        child: Column(
                          children: [
                            Card(child: Image.network(
                              imageList[index],
                              height: 150,
                            )),
                            const SizedBox(height: 4,),
                            Text(
                              imageData[index],
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Courgette-Regular',
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(height: 5),
                const Padding(
                  padding: EdgeInsets.only(left: 8.0, bottom: 5),
                  child: Text(
                    'Stories',
                    style: TextStyle(
                      fontFamily: 'Courgette-Regular',
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                    height: 150,
                    width: 400,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: nameData.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Column(
                          children: <Widget>[
                            Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.black,
                                      width: 2.0,
                                    ),
                                    shape: BoxShape.circle,
                                  ),
                                  child: CircleAvatar(
                                    radius: 35.0,
                                    backgroundImage: NetworkImage(profileImage[index]),
                                  ),
                                ),
                                const SizedBox(width: 10,),
                              ],
                            ),
                            const SizedBox(height: 10.0),
                            Text(
                              nameData[index],

                              style: const TextStyle(
                                fontFamily: 'Courgette-Regular',
                                fontSize: 10.0,
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 16.0, right:  16.0, bottom: 10.0,),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Health Tips',
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          fontFamily: 'Courgette-Regular',),
                      ),
                      Text(
                        'See More',
                        textDirection: TextDirection.rtl,

                        style: TextStyle(
                            color: Colors.blue,
                          fontFamily: 'Courgette-Regular',
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 120,
                  width: 400,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: tipData.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: GestureDetector(
                            onTap: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => HealthTipList(
                                    healthTipsData: tipData,
                                  ),
                                ),
                              );
                              Navigator.pushNamed(context, '/healthTips');
                            },
                            child: Hero(
                              tag: 'Htips',
                              transitionOnUserGestures: true,
                              child: Card(
                                elevation: 5.0,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.network(
                                      tipData[index].newsBanner, height: 80,
                                      width: 150,
                                    ),
                                    const SizedBox(height: 4,),
                                    Padding(
                                      padding: const EdgeInsets.only(left:8.0),
                                      child: Text(
                                        tipData[index].newsTitle,
                                        style: const TextStyle(
                                          fontSize: 16,
                                          fontFamily: 'Courgette-Regular',
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                        ),
                      );
                    },
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 16.0, right:  16.0, top: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Recent News',
                        textDirection: TextDirection.ltr,
                        style: TextStyle(fontSize: 24,
                            fontFamily: 'Courgette-Regular',
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'See More',
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                            color: Colors.blue,
                          fontFamily: 'Courgette-Regular',
                        ),
                      ),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  child: SizedBox(
                    width: 375,
                    height: 300,
                    child: ListView.builder(
                      itemCount: imageList.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Card(
                          elevation: 5.0,
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 16.0,top: 10.0, bottom: 10.0),
                                child: Container(
                                  width: 70.0,  // set the width and height to be the same for a square container
                                  height: 70.0,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.rectangle, // set the shape of the container to a rectangle
                                    borderRadius: BorderRadius.circular(10.0), // set the border radius to give the container rounded corners
                                    image: DecorationImage(
                                        fit: BoxFit.cover, // set the fit of the image to cover the container
                                        image: NetworkImage(
                                            imageList[index]
                                        ) // add the image to the container
                                    ),
                                  ),
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left:8.0),
                                    child: Text(
                                      imageData[index],
                                      style: const TextStyle(
                                        fontSize: 14,
                                        fontFamily: 'Courgette-Regular',
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 4,),
                                  Padding(
                                    padding: const EdgeInsets.only(left:8.0),
                                    child: Text(
                                      imageData[index],
                                      style: const TextStyle(
                                        fontFamily: 'Courgette-Regular',
                                        fontSize: 10,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xffECBB7D),
        elevation: 5.0,
        child: const Icon(Icons.arrow_forward),
        onPressed: () => {},
      ),
    );
  }
}


