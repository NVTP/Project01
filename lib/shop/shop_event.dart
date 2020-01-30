import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ShopEvent extends StatefulWidget {
  @override
  _ShopEventState createState() => _ShopEventState();
}

class _ShopEventState extends State<ShopEvent> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _priceOffer;
  TextEditingController _amountOffer;

  @override
  void initState() {
    // TODO: implement initState
    _priceOffer = TextEditingController();
    _amountOffer = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                    width: MediaQuery.of(context).size.width,
                    height: 150,
                    child: Image.asset(
                      'assets/prototype/sony.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Text('Product : Sony WF-1000xm3',style: TextStyle(fontSize: 15),),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Card(
                      elevation: 1.1,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Container(
                        height: 100,
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                        width: MediaQuery.of(context).size.width,
                        child: ListView(
                          children: <Widget>[
                            Text('Sony WF-1000xm3 เป็นหูฟังแบบ True Wireless แบบ in ear'),
                            Text('หูฟัง Sony WF-1000XM3 นั้นใช้ไดร์เวอร์ชนิดไดนามิคขนาด 6 มม. ซึ่งออกแบบมาให้สามารถตอบสนองความถี่ได้ครบทุกย่านครับ โดยมาพร้อมชิป Sony QN1e ที่ทำหน้าที่ประมวลผลการตัดเสียงรบกวน และทำให้ที่เป็น DAC และ Sound Processing ในหนึ่งเดียว')
                          ],
                        ),
                      ),
                    ),
                  ),//DETAIL
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text('Quantity : 99'),
                      Text('Shop : 0'),
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(
                        'Price : '
                      ),
                      Flexible(
                        child: Container(
                          width: 100,
                          child: TextFormField(
                            controller: _priceOffer,
                            keyboardType: TextInputType.number,
                            inputFormatters: [WhitelistingTextInputFormatter.digitsOnly],
                            maxLines: 1,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              hintText: '0',
                              hintStyle: TextStyle(color: Colors.blueGrey[300])
                            ),
                            validator: (data){
                              if(data.isEmpty){
                                return 'Fill price';
                              }else{
                                return null;
                              }
                            },
                          ),
                        ),
                      ),
                      Text('Bath'),
                    ],
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(
                          'Quantity : '
                      ),
                      Flexible(
                        child: Container(
                          width: 100,
                          child: TextFormField(
                            controller: _amountOffer,
                            keyboardType: TextInputType.number,
                            inputFormatters: [WhitelistingTextInputFormatter.digitsOnly],
                            maxLines: 1,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                hintText: '0',
                                hintStyle: TextStyle(color: Colors.blueGrey[300])
                            ),
                            validator: (data){
                              if(data.isEmpty){
                                return 'Fill Quantity';
                              }else{
                                return null;
                              }
                            },
                          ),
                        ),
                      ),
                      Text('Piece'),
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('Date Start : 11/27/2020'),
                        Text('Date End : 02/27/2020')
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  RaisedButton(
                    onPressed: (){
                      if(_formKey.currentState.validate()){

                      }
                    },
                    elevation: 1.1,
                    color: Colors.blueGrey[300],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Text('Offer', style: TextStyle(color: Colors.white,fontSize: 20),),
                  ),
                  Divider(
                    height: 5.0,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.transparent,
                      backgroundImage: AssetImage(
                        'assets/images/sony.jpeg'
                      ),
                    ),
                    title: Text('Sony Thailand'),
                    subtitle: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Price : 1500'),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text('Quantity : 120'),
                      ],
                    ),
                    trailing: InkWell(
                      onTap: (){},
                      child: Text('Cancel',style: TextStyle(color: Colors.red),),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
