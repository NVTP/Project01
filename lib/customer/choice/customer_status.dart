import 'package:flutter/material.dart';

class CustomerStatus extends StatefulWidget {
  @override
  _CustomerStatusState createState() => _CustomerStatusState();
}

class _CustomerStatusState extends State<CustomerStatus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        shrinkWrap: true,
        slivers: <Widget>[
          SliverAppBar(
            floating: true,
            centerTitle: true,
            title: Text('Information Customer'),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: 40,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.transparent,
                      backgroundImage: AssetImage(
                        'assets/prototype/virgil.jpg'
                      ),
                      radius: 75,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Divider(
                color: Colors.grey,
                height: 1.0,
              ),
              SizedBox(
                height: 20,
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  backgroundImage: AssetImage(
                    'assets/prototype/sony.jpg'
                  ),
                  radius: 30,
                ),
                title: Text('Sony wf-1000xm3'),
                subtitle: Text('Status : Sending'),
              ),
              Divider(
                height: 0.0,
                color: Colors.grey,
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
