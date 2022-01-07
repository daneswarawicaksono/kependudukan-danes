import 'dart:js';

import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF227471),
        automaticallyImplyLeading: true,
        title: const Text(
          'Data Kependudukan',
        ),
        bottom: PreferredSize(
            child: Container(
              child: Row(
                children: [
                  TextFormField(),
                  Icon(Icons.add),
                ],
              ),
            ),
            preferredSize: Size.fromHeight(kToolbarHeight)),
      ),
      body: ListView.builder(
          itemCount: 4, itemBuilder: (context, index) => DataCard()),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color(0xFF227471),
        child: Icon(Icons.add),
      ),
    );
  }
}

class DataCard extends StatelessWidget {
  const DataCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 8.0, horizontal: 14.0),
            child: Text(
              "Daneswara",
              style: TextStyle(
                color: Color(0xFF206766),
                fontSize: 14.0,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14.0),
            child: Divider(
              color: Color(0xFFB3DCDC),
              height: 2,
              thickness: 1,
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 8.0, horizontal: 14.0),
            child: Row(
              children: [
                Text(
                  "Usia",
                  style: TextStyle(
                    color: Color(0xFF206766),
                    fontSize: 14.0,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 47.0, right: 18.0),
                  child: Text(
                    ":",
                    style: TextStyle(
                      color: Color(0xFF206766),
                      fontSize: 14.0,
                    ),
                  ),
                ),
                Text(
                  "12 Tahun",
                  style: TextStyle(
                    color: Color(0xFF206766),
                    fontSize: 14.0,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14.0),
            child: Divider(
              color: Color(0xFFB3DCDC),
              height: 2,
              thickness: 1,
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 8.0, horizontal: 14.0),
            child: Row(
              children: [
                Text(
                  "Alamat",
                  style: TextStyle(
                    color: Color(0xFF206766),
                    fontSize: 14.0,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 32.0, right: 18.0),
                  child: Text(
                    ":",
                    style: TextStyle(
                      color: Color(0xFF206766),
                      fontSize: 14.0,
                    ),
                  ),
                ),
                Text(
                  "Bugisan RT 30/ RW 07",
                  style: TextStyle(
                    color: Color(0xFF206766),
                    fontSize: 14.0,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
