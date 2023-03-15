import 'package:flutter/material.dart';
import 'package:pixabay_restjson/models/pixabay_api.dart';
import 'package:pixabay_restjson/models/pixbay_model.dart';

import 'package:pixabay_restjson/view/widget/card.dart';

class HomePageScreen extends StatefulWidget {
  @override
  _HomePageScreenState createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  late List<PixabayModel> _pixabays;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    getData();
  }

  Future<void> getData() async {
    _pixabays = await PixabayApi().getPixabay();

    setState(() {
      _isLoading = false;
    });
    print(_pixabays);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.photo_album_outlined),
              SizedBox(width: 10),
              Text('Gallery Pixabay'),
            ],
          ),
        ),
        body: _isLoading
            ? Center(child: CircularProgressIndicator())
            : ListView.builder(
                itemCount: _pixabays.length,
                itemBuilder: (context, index) {
                  return PixabayCard(
                      name: _pixabays[index].user,
                      rating: _pixabays[index].likes.toString(),
                      viewers: _pixabays[index].views.toString(),
                      largeImageURL: _pixabays[index].largeImageURL);
                },
              ));
  }
}
