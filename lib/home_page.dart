import 'package:flutter/material.dart';
import 'package:myflutterwiget/custom_dlg.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('tab of content'),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              Text('slivers'),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  RaisedButton(
                    color: Colors.yellowAccent,
                    onPressed: () {
                      Navigator.of(context).pushNamed('sliver_demo_1');
                    },
                    child: Text('sliver'),
                  ),
                  RaisedButton(
                    color: Colors.yellowAccent,
                    onPressed: () {
                      Navigator.of(context).pushNamed('sliver_demo_2');
                    },
                    child: Text('sliver2'),
                  ),
                  RaisedButton(
                    color: Colors.yellowAccent,
                    onPressed: () {
                      Navigator.of(context).pushNamed('sliver_with_tab');
                    },
                    child: Text('sliver_with_tab'),
                  )
                ],
              ),
              Padding(
                child: Text('page view'),
                padding: EdgeInsets.symmetric(vertical: 10),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  RaisedButton(
                    color: Colors.yellowAccent,
                    onPressed: () {
                      Navigator.of(context).pushNamed('page_view_demo');
                    },
                    child: Text('page view'),
                  )
                ],
              ),
              Padding(
                child: Text('basic wiget'),
                padding: EdgeInsets.symmetric(vertical: 10),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('basic_widget');
                },
                color: Colors.pink,
                child: Text(
                  'basic',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('demo_bottom_tab_bar');
                },
                color: Colors.pink,
                child: Text(
                  'bottom tab bar',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('text_span_demo');
                },
                color: Colors.blue,
                child: Text(
                  'text span',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('pull_to_refresh_demo');
                },
                color: Colors.black,
                child: Text(
                  'pull_to_refresh_demo',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.of(context)
                      .pushNamed('pull_to_refesh_loadmore_demo');
                },
                color: Colors.black,
                child: Text(
                  'pull_to_refresh_loadmore_demo',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  RaisedButton(
                    color: Colors.amber,
                    onPressed: () {
                      Navigator.of(context).pushNamed('dio_demo');
                    },
                    child: Text('dio simple'),
                  ),
                  RaisedButton(
                    color: Colors.amber,
                    onPressed: () {
                      Navigator.of(context).pushNamed('dio_demo2');
                    },
                    child: Text('dio pro'),
                  ),
                  RaisedButton(
                    color: Colors.amber,
                    onPressed: () {
                      Navigator.of(context).pushNamed('dio_restful');
                    },
                    child: Text('dio restful'),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  RaisedButton(
                    color: Colors.cyanAccent,
                    onPressed: () {
                      Navigator.of(context).pushNamed('tab_bar_demo');
                    },
                    child: Text('tabbar simple'),
                  ),
                  RaisedButton(
                    color: Colors.cyanAccent,
                    onPressed: () {
                      Navigator.of(context).pushNamed('tab_bar_demo2');
                    },
                    child: Text('tab bar 2'),
                  ),
                  RaisedButton(
                    color: Colors.cyanAccent,
                    onPressed: () {
                      Navigator.of(context).pushNamed('tab_bar_demo3');
                    },
                    child: Text('tab bar 3'),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  RaisedButton(
                    color: Colors.tealAccent,
                    onPressed: () {
                      Navigator.of(context).pushNamed('paint_demo');
                    },
                    child: Text('paint'),
                  ),
                  RaisedButton(
                    color: Colors.tealAccent,
                    onPressed: () {
                      Navigator.of(context).pushNamed('paint_demo2');
                    },
                    child: Text('paint2'),
                  )
                ],
              ),
              FlatButton(
                  onPressed: () {
                    showDialog(context: context, child: CustomDialog());
                  },
                  child: Container(
                      width: 50,
                      height: 50,
                      alignment: Alignment.center,
                      child: Text(
                        'dialog',
                        style: Theme.of(context).textTheme.title,
                      ),
                      decoration: ShapeDecoration(
                          color: Colors.amber, shape: CircleBorder()))),
              RaisedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('login_page');
                },
                color: Colors.indigo,
                child: Text(
                  'fish-redux',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
