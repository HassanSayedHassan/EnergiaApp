import '../screens/article_details_screen.dart';
import 'package:flutter/material.dart';

class ArticleWidget extends StatefulWidget {

  @override
  _ArticleWidgetState createState() => _ArticleWidgetState();
}

class _ArticleWidgetState extends State<ArticleWidget> {
  @override
  Widget build(BuildContext context) {
     Widget gradientContainer = Container(
        margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
        child: Container(
          width: 80,
          height: 3,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                stops: [0.3, 1],
                colors: [Theme.of(context).primaryColor, Colors.white]),
            borderRadius: BorderRadius.all(Radius.circular(30)),
          ),
        ));
   
   
   
   
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
                margin: EdgeInsets.fromLTRB(10, 10, 0, 0),
                child: Text("Upcoming Articles",style: TextStyle(
                    fontWeight: FontWeight.w900,
                   fontSize: 17.0,
                    color: Theme.of(context).textSelectionColor
                ),)),
          gradientContainer,
            InkWell(
              onTap: () => Navigator.of(context)
                  .pushNamed(ArticleDetailsScreen.routPage),
                          child: Container(
                margin: EdgeInsets.fromLTRB(10, 10, 10, 10),

                height: 180,
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.all(Radius.circular(60)),
                ),

              ),
            ),
            Divider(),
            Container(
                margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                child: Text("Previous Articles",style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 17.0,
                    color: Theme.of(context).textSelectionColor
                ),)),
           gradientContainer,
            Container(
              margin: EdgeInsets.fromLTRB(50, 10, 0, 10),

              height: 195,
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30),topLeft: Radius.circular(30)),
              ),

            ),
          ],
        ),
      ),
    );
  }
}