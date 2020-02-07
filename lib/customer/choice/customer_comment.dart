import 'package:flutter/material.dart';

class CommentCustomer extends StatefulWidget {
  @override
  _CommentCustomerState createState() => _CommentCustomerState();
}

class _CommentCustomerState extends State<CommentCustomer> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _comment;

  @override
  void initState() {
    // TODO: implement initState
    _comment = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        shrinkWrap: true,
        slivers: <Widget>[
          SliverAppBar(
            title: Text('Information', style: TextStyle(color: Colors.white,fontSize: 20),),
            centerTitle: true,
            floating: true,
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 40,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.transparent,
                    backgroundImage: AssetImage(
                      'assets/images/sony.jpeg'
                    ),
                    radius: 75,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Sony Thailand',style: TextStyle(color: Colors.black,fontSize: 20),),
                  SizedBox(
                    height: 20,
                  ),
                  Divider(
                    height: 5.0,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Text('Reviews'),
                          SizedBox(
                            height: 5.0,
                          ),
                          Text('1'),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Divider(
                    height: 5.0,
                    color: Colors.grey,
                  ),
                  Form(
                    key: _formKey,
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: TextFormField(
                            keyboardType: TextInputType.multiline,
                            textAlign: TextAlign.justify,
                            maxLines: null,
                            controller: _comment,
                            decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.mode_comment,
                                size: 20,
                                color: Colors.grey,
                              ),
                              hintText: 'Comment something',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Card(
                          elevation: 1.1,
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)
                          ),
                          child: ListTile(
                            leading: CircleAvatar(
                              backgroundColor: Colors.transparent,
                              backgroundImage: AssetImage(
                                  'assets/prototype/virgil.jpg'
                              ),
                              radius: 35,
                            ),
                            title: Text('Virgil van Dijk'),
                            subtitle: Text('Very Good !'),
                            trailing: IconButton(
                              onPressed: (){},
                              icon: Icon(
                                  Icons.more_vert
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
