import 'package:flutter/material.dart';

class Checkouts extends StatefulWidget {
  @override
  _CheckoutsState createState() => _CheckoutsState();
}

class _CheckoutsState extends State<Checkouts> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _address;

  @override
  void initState() {
    // TODO: implement initState
    _address = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Checkouts',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 200.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey[200],
                    ),
                    child: Image.asset(
                      'assets/prototype/sony.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                 RichText(
                   text: TextSpan(
                     text: 'Product : ',
                     style: TextStyle(fontSize: 16,color: Colors.black),
                     children: <TextSpan>[
                       TextSpan(
                         text: 'Sony WF-1000xm3',
                       ),
                     ]
                   ),
                 ),
                  SizedBox(
                    height: 10,
                  ),
                  RichText(
                    text: TextSpan(
                        text: 'Shop : ',
                        style: TextStyle(fontSize: 16,color: Colors.black),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Sony Thailand',
                          ),
                        ]
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  RichText(
                    text: TextSpan(
                        text: 'Quantity : ',
                        style: TextStyle(fontSize: 16,color: Colors.black),
                        children: <TextSpan>[
                          TextSpan(
                            text: '2',
                          ),
                        ]
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  RichText(
                    text: TextSpan(
                        text: 'Price : ',
                        style: TextStyle(fontSize: 16,color: Colors.black),
                        children: <TextSpan>[
                          TextSpan(
                            text: '1500.00',
                          ),
                        ]
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  RichText(
                    text: TextSpan(
                        text: 'Total : ',
                        style: TextStyle(fontSize: 16,color: Colors.black),
                        children: <TextSpan>[
                          TextSpan(
                            text: '3000.00',
                          ),
                        ]
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    reverse: true,
                    child: Form(
                      key: _formKey,
                      child: TextFormField(
                        controller: _address,
                        keyboardType: TextInputType.multiline,
                        maxLines: null,
                        decoration: InputDecoration(
                          hintText: 'Address',
                          hintStyle: TextStyle(color: Colors.blueGrey[300]),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0)
                          ),
                        ),
                        validator: (data){
                          if(data.isEmpty){
                            return 'Plese add address';
                          }else{
                            return null;
                          }
                        },
                      ),
                    ),
                  ),//ADDRESS
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 50,
                    child: RaisedButton(
                      color: Colors.white,
                      onPressed: ()=>showSlideUpView(),
                      elevation: 1.1,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Container(
                        alignment: Alignment.centerLeft,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              'Select Payments'
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.blueGrey[300],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),//PAYMENTS
                  SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 50.0,
                    child: RaisedButton(
                      onPressed: (){},
                      color: Colors.blueGrey[300],
                      elevation: 1.1,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Text(
                        'Checkouts',
                        style: TextStyle(color: Colors.white,fontSize: 20),
                      ),
                    ),
                  ),//CHECKOUTS
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void showSlideUpView(){
    showModalBottomSheet(
        context: context,
        builder: (context){
          return Column(
            children: <Widget>[
              SizedBox(
                height: 10.0,
              ),
              Text('Ok'),
              Text('Ok'),
              Text('Ok'),
              Text('Ok'),
              Text('Ok'),
              Text('Ok'),
              Text('Ok'),
              Text('Ok'),
              RaisedButton(
                onPressed: (){
                  Navigator.pop(context);
                },
                child: Text('OK'),
              ),
            ],
          );
        }
    );
  }
}
