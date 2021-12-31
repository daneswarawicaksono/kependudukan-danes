import 'package:flutter/material.dart';

import 'data_diri.dart';

class DataDiriDua extends StatefulWidget {
  const DataDiriDua({Key? key}) : super(key: key);

  @override
  _DataDiriDuaState createState() => _DataDiriDuaState();
}

class _DataDiriDuaState extends State<DataDiriDua> {
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
          DataForm(form: 'Aktivitas', form2: 'Bermain Game'),
          DataForm(form: 'Pekerjaan', form2: 'Desain jamban duduk'),
          DataForm(form: 'Status pekerjaan', form2: 'Kontrak'),
          DataForm(form: "Ijazah", form2: 'Playgroup'),
          DataForm(
              form: 'Pendidikan tertinggi', form2: 'Tidak pernah bersekolah'),
          DataForm(form: 'Kepemilikan Tanah', form2: 'Seluruh pantai selatan'),
          DataForm(form: 'Listrik', form2: 'Numpang tetangga'),
          DataForm(form: 'sumber air minum', form2: 'Sumur tetangga'),
          DataForm(form: 'Kepemilikan jamban', form2: 'Pake wc umum'),
          DataForm(form: 'jenis lantai terluas', form2: '10 meter2'),
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
                  child: Text(
                    '1',
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
                  child: Text('2'),
                  style: ElevatedButton.styleFrom(
                      primary: Color(0xFF206766),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      padding: EdgeInsets.all(10)),
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
