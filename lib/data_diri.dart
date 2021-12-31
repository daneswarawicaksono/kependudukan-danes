import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:kependudukan/data_diri_2.dart';
import 'package:kependudukan/input_new_data.dart';

class DataDiri extends StatefulWidget {
  const DataDiri({Key? key}) : super(key: key);

  @override
  _DataDiriState createState() => _DataDiriState();
}

class _DataDiriState extends State<DataDiri> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data Diri'),
        backgroundColor: Color(0XFF217777),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          DataForm(form: 'Nama Lengkap', form2: 'Dion'),
          DataForm(form: 'NIK', form2: '69420'),
          DataForm(form: 'Alamat', form2: 'JL. Srikaloka'),
          DataForm(form: "Lama Tinggal", form2: '8 Tahun'),
          DataForm(form: 'jenis Kelamin', form2: 'Laki Laki'),
          DataForm(form: 'Tempat Lahir', form2: 'Yogyakarta, DIY'),
          DataForm(form: 'Tanggal Lahir', form2: '25 mei 1998'),
          DataForm(form: 'Kewarganegaraan', form2: 'Indonesia'),
          DataForm(form: 'Suku Bangsa', form2: 'Jawa'),
          DataForm(form: 'Agama', form2: 'Islam'),
          DataForm(form: 'Bahasa yang digunakan', form2: 'Jawa/Indonesia'),
          DataForm(form: 'Status Pernikahan', form2: '-'),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 13,
              ),
              Container(
                width: 148,
                height: 23,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => DataDiri()),
                    );
                  },
                  child: Text('1'),
                  style: ElevatedButton.styleFrom(
                      primary: Color(0xFF206766),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      padding: EdgeInsets.all(10)),
                ),
              ),
              SizedBox(
                width: 38,
              ),
              Container(
                width: 148,
                height: 23,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => DataDiriDua()),
                    );
                  },
                  child: Text(
                    '2',
                    style: TextStyle(
                      color: Color(0xFF000000),
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: Color(0xFFFFFFFF),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      padding: EdgeInsets.only(top: 10)),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class DataForm extends StatelessWidget {
  const DataForm({Key? key, required this.form, required this.form2})
      : super(key: key);

  final String form;
  final String form2;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          form,
          style: TextStyle(
            color: Color(0xFF636363),
            fontSize: 14.0,
          ),
        ),
        SizedBox(height: 2),
        Text(
          form2,
          style: TextStyle(
            color: Color(0xFF206766),
            fontSize: 14.0,
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Container(
          height: 2,
          color: const Color(0xFF636363),
        ),
        SizedBox(
          height: 6,
        ),
      ],
    );
  }
}
