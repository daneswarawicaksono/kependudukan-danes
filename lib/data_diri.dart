import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:kependudukan/data_diri_2.dart';
import 'package:kependudukan/input_new_data.dart';

class DataDiri extends StatefulWidget {
  const DataDiri({
    Key? key,
    required this.nama,
    required this.sukubangsa,
    required this.agama,
    required this.tanggal,
    required this.tempat,
    required this.kelamin,
    required this.statusalamat,
    required this.jalan,
    required this.nomor,
    required this.rt,
    required this.rw,
    required this.kelurahan,
    required this.kecamatan,
    required this.kabupaten,
    required this.provinsi,
    required this.kewarganegaraan,
    required this.lamatinggal,
    required this.statusPerkawinan,
    required this.pendidikan,
    required this.pekerjaan,
  }) : super(key: key);
  final String nama;
  final String sukubangsa;
  final String agama;
  final String tanggal;
  final String tempat;
  final String kelamin;
  final String statusalamat;
  final String jalan;
  final String nomor;
  final String rt;
  final String rw;
  final String kelurahan;
  final String kecamatan;
  final String kabupaten;
  final String provinsi;
  final String kewarganegaraan;
  final String lamatinggal;
  final String statusPerkawinan;
  final String pendidikan;
  final String pekerjaan;

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
          Text(
            'Status: Berhasil dikirim!',
            style: TextStyle(
              color: Color(0xFFFF0000),
              fontSize: 14.0,
            ),
          ),
          SizedBox(
            height: 14.0,
          ),
          DataForm(form: 'Nama Lengkap', form2: widget.nama),
          DataForm(form: 'NIK', form2: widget.sukubangsa),
          DataForm(form: 'Agama', form2: widget.agama),
          DataForm(form: "Tanggal Kelahiran", form2: widget.tanggal),
          DataForm(form: "Tempat Kelahiran", form2: widget.tempat),
          DataForm(form: 'jenis Kelamin', form2: widget.kelamin),
          DataForm(form: 'Status Alamat', form2: widget.statusalamat),
          DataForm(form: 'Jalan/Dusun/Blok', form2: widget.jalan),
          Center(
            child: Row(
              children: [
                SizedBox(
                  width: 30.0,
                ),
                SizedBox(
                  child: DataForm(form: 'Nomor', form2: widget.nomor),
                  width: 160.0,
                ),
                SizedBox(
                  width: 10.5,
                ),
                Text(
                  '/',
                  textScaleFactor: 2.0,
                ),
                SizedBox(
                  width: 10.5,
                ),
                SizedBox(
                  child: DataForm(form: 'RT', form2: widget.rt),
                  width: 160.0,
                ),
                SizedBox(
                  width: 10.5,
                ),
                Text(
                  '/',
                  textScaleFactor: 2.0,
                ),
                SizedBox(
                  width: 10.5,
                ),
                SizedBox(
                  child: DataForm(form: 'RW', form2: widget.rw),
                  width: 160.0,
                ),
                SizedBox(
                  width: 20.0,
                ),
              ],
            ),
          ),
          DataForm(form: 'Kelurahan', form2: widget.kelurahan),
          DataForm(form: 'Kecamatan', form2: widget.kecamatan),
          DataForm(form: 'Kabupaten', form2: widget.kabupaten),
          DataForm(form: 'Provinsi', form2: widget.provinsi),
          DataForm(form: 'Kewarganegaraan', form2: widget.kewarganegaraan),
          DataForm(form: 'Lama Tinggal', form2: widget.lamatinggal),
          DataForm(form: 'Status Perkawinan', form2: widget.statusPerkawinan),
          DataForm(form: 'Pendidikan Terakhir', form2: widget.pendidikan),
          DataForm(form: 'Pekerjaan', form2: widget.pekerjaan)
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          //     SizedBox(
          //       width: 13,
          //     ),
          //     Container(
          //       width: 148,
          //       height: 23,
          //       child: ElevatedButton(
          //         onPressed: () {
          //           // Navigator.pushReplacement(
          //           //   context,
          //           //   MaterialPageRoute(builder: (context) => DataDiri()),
          //           // );
          //         },
          //         child: Text('1'),
          //         style: ElevatedButton.styleFrom(
          //             primary: Color(0xFF206766),
          //             shape: RoundedRectangleBorder(
          //               borderRadius: BorderRadius.circular(30.0),
          //             ),
          //             padding: EdgeInsets.all(10)),
          //       ),
          //     ),
          //     SizedBox(
          //       width: 38,
          //     ),
          //     Container(
          //       width: 148,
          //       height: 23,
          //       child: ElevatedButton(
          //         onPressed: () {
          //           Navigator.pushReplacement(
          //             context,
          //             MaterialPageRoute(builder: (context) => DataDiriDua(

          //             )),
          //           );
          //         },
          //         child: Text(
          //           '2',
          //           style: TextStyle(
          //             color: Color(0xFF000000),
          //           ),
          //         ),
          //         style: ElevatedButton.styleFrom(
          //             primary: Color(0xFFFFFFFF),
          //             shape: RoundedRectangleBorder(
          //               borderRadius: BorderRadius.circular(30.0),
          //             ),
          //             padding: EdgeInsets.only(top: 10)),
          //       ),
          //     ),
          //   ],
          // ),
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
