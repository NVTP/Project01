import 'package:assem_deal/customer/choice/select_variations.dart';
import 'package:flutter/material.dart';

class EventCustomer extends StatefulWidget {
  @override
  _EventCustomerState createState() => _EventCustomerState();
}

class _EventCustomerState extends State<EventCustomer> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
                  height: 150.0,
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset('assets/prototype/sony.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                Text('Product : Sony wf-1000xm3',style: TextStyle(fontSize: 15),),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Card(
                    color: Colors.grey[200],
                    elevation: 1.1,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      width: MediaQuery.of(context).size.width,
                      height: 100.0,
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: ListView(
                        children: <Widget>[
                          Text('WF-1000XM3 เป็นหูฟังไร้สายแบบ True Wireless แบบ in ear '),
                          Text('หูฟัง Sony WF-1000XM3 นั้นใช้ไดร์เวอร์ชนิดไดนามิคขนาด 6 มม. ซึ่งออกแบบมาให้สามารถตอบสนองความถี่ได้ครบทุกย่านครับ โดยมาพร้อมชิป Sony QN1e ที่ทำหน้าที่ประมวลผลการตัดเสียงรบกวน และทำให้ที่เป็น DAC และ Sound Processing ในหนึ่งเดียว'),
                        ],
                      ),
                    ),
                  ),
                ),//DETAIL PRODUCT
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text('Quantity : 99'),
                    Text('Shop Require : 120'),
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
                SelectVariations(),//SELECT VARIATIONS
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text('Resposible by Shop : AAAA'),
                    Text('Price per piece : 1500.00'),
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text('Data Start : 01/20/2020'),
                    Text('Date End : 03/20/2020'),
                  ],
                ),//DATE
                SizedBox(
                  height: 10.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          child: RaisedButton(
                            color: Colors.blueGrey[200],
                            onPressed: (){},
                            elevation: 1.1,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)
                            ),
                            child: Text('JOIN',style: TextStyle(color: Colors.white,fontSize: 18),),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          child: RaisedButton(
                            color: Colors.blueGrey[200],
                            onPressed: (){},
                            elevation: 1.1,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)
                            ),
                            child: Text('Cancel',style: TextStyle(color: Colors.white,fontSize: 18),),
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: (){},
                        icon: Icon(Icons.share,color: Color(0xFF3B5998),),
                      ),
                    ],
                  ),
                ),//Button JOIN
                SizedBox(
                  height: 20.0,
                ),
                Divider(
                  height: 5.0,
                  color: Colors.grey,
                ),
                SizedBox(
                  height: 10.0,
                ),
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.blueGrey[300],
                      borderRadius: BorderRadius.circular(5)
                    ),
                      child: Text(' Your ',style: TextStyle(color: Colors.white,fontSize: 20),)
                  ),
                ),
                ListTile(
                  leading: CircleAvatar(
                    maxRadius: 35.0,
                    backgroundImage: AssetImage('assets/prototype/virgil.jpg'),
                  ),
                  title: Text('Virgil van Dijk'),
                  subtitle: Text('Your Quantity : 2'),
                  trailing: IconButton(
                    onPressed: (){},
                    icon: Icon(
                      Icons.settings,
                      color: Colors.grey[400],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Divider(
                  color: Colors.grey,
                  height: 5.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}