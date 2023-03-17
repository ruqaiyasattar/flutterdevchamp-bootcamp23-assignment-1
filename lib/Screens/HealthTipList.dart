import 'package:flutter/material.dart';
import 'package:medicoz/ModelClasses/HealthTipsData.dart';

class HealthTipList extends StatelessWidget {
final List<HealthTipsData> healthTipsData;
  const HealthTipList( {Key? key, required this.healthTipsData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: ListView.builder(
          itemCount: healthTipsData.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 6),
              child: InkWell(
                onTap: (){

                },
                child: Card(
                  elevation: 5.0,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Hero(
                            tag: 'Htips',
                            child: Image.network(
                              healthTipsData[index].newsBanner, height: 80,
                              width: 150,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top:8.0, left: 6.0),
                            child: Text(
                              healthTipsData[index].time.timeInHours,
                              style: const TextStyle(
                                color: Colors.grey,
                                fontFamily: 'Courgette-Regular',
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left:8.0),
                            child: Text(
                              healthTipsData[index].newsTitle,
                              style: const TextStyle(
                                color: Colors.grey,
                                fontFamily: 'Courgette-Regular',
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const SizedBox(height: 4,),
                          Padding(
                            padding: const EdgeInsets.only(right:18.0),
                            child: SizedBox(
                              width: 150,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2,
                                  healthTipsData[index].newsDescription,
                                  style: const TextStyle(
                                    color: Colors.grey,
                                    fontSize: 12,
                                    fontFamily: 'Courgette-Regular',
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      );
  }
}
