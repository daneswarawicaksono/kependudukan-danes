import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kependudukan/data_diri.dart';

class InputNewData extends StatefulWidget {
  const InputNewData({Key? key}) : super(key: key);

  @override
  _InputNewDataState createState() => _InputNewDataState();
}

class _InputNewDataState extends State<InputNewData> {
  String groupvalue = '';
  TextEditingController namaLengkapController = TextEditingController();
  TextEditingController sukuBangsaController = TextEditingController();
  TextEditingController agamaController = TextEditingController();
  TextEditingController kelahiranController = TextEditingController();
  TextEditingController tempatLahirController = TextEditingController();
  TextEditingController tanggalLahirController = TextEditingController();
  String jenisKelamin = '';
  String statusAlamat = '';
  TextEditingController jalanController = TextEditingController();
  TextEditingController nomorController = TextEditingController();
  TextEditingController rtController = TextEditingController();
  TextEditingController rwController = TextEditingController();
  TextEditingController kelurahanController = TextEditingController();
  TextEditingController kecamatanController = TextEditingController();
  TextEditingController kabupatenController = TextEditingController();
  TextEditingController provinsiController = TextEditingController();
  TextEditingController kewarganegaraanController = TextEditingController();
  TextEditingController statusPerkawinanController = TextEditingController();
  TextEditingController pendidikanTerakhirController = TextEditingController();
  TextEditingController lamaTinggalController = TextEditingController();
  TextEditingController pekerjaanController = TextEditingController();
  TextEditingController tahunController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      appBar: AppBar(
        backgroundColor: Color(0xFF227471),
        automaticallyImplyLeading: true,
        title: const Text(
          'Tambah Data Baru',
        ),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
        children: [
          TitleLine(
            title: 'Personal',
          ),
          LabelTextField(
            label: 'Nama Lengkap',
            controller: namaLengkapController,
          ),
          LabelTextField(
            label: 'Suku Bangsa',
            controller: sukuBangsaController,
          ),
          LabelTextField(
            label: 'Agama',
            controller: agamaController,
          ),
          TitleLine(
            title: 'Kelahiran',
          ),
          LabelTextField(
            label: 'Tempat Lahir',
            controller: tempatLahirController,
          ),
          LabelTextField(
            label: 'Tanggal Lahir',
            controller: tanggalLahirController,
          ),
          Text(
            'Jenis Kelamin',
            style: TextStyle(
              color: Color(0xFF206766),
              fontSize: 20.0,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
            child: Row(
              children: [
                Radio<String>(
                  value: 'Laki Laki',
                  groupValue: jenisKelamin,
                  onChanged: (String? value) {
                    setState(() {
                      jenisKelamin = value!;
                    });
                  },
                ),
                Text(
                  'Laki Laki',
                  style: TextStyle(
                    color: Color(0xFF206766),
                    fontSize: 14.0,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: Row(
              children: [
                Radio<String>(
                  value: 'Perempuan',
                  groupValue: jenisKelamin,
                  onChanged: (String? value) {
                    setState(() {
                      jenisKelamin = value!;
                    });
                  },
                ),
                Text(
                  'Perempuan',
                  style: TextStyle(
                    color: Color(0xFF206766),
                    fontSize: 14.0,
                  ),
                ),
              ],
            ),
          ),
          TitleLine(
            title: 'Alamat',
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: Text(
              'Status Alamat',
              style: TextStyle(
                color: Color(0xFF206766),
                fontSize: 20.0,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
            child: Row(
              children: [
                Radio<String>(
                  value: 'Alamat Asli',
                  groupValue: statusAlamat,
                  onChanged: (String? value) {
                    statusAlamat = value!;
                  },
                ),
                Text(
                  'Alamat Asli[Sesuai KTP]',
                  style: TextStyle(
                    color: Color(0xFF206766),
                    fontSize: 14.0,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: Row(
              children: [
                Radio<String>(
                  value: 'Alamat Domisili',
                  groupValue: statusAlamat,
                  onChanged: (String? value) {
                    statusAlamat = value!;
                  },
                ),
                Text(
                  'Alamat Domisili',
                  style: TextStyle(
                    color: Color(0xFF206766),
                    fontSize: 14.0,
                  ),
                ),
              ],
            ),
          ),
          LabelTextField(
            label: 'Jalan/Dusun/Blok',
            controller: jalanController,
          ),
          Row(
            children: [
              Expanded(
                child: LabelKecil(
                  label: 'Nomor',
                  border: OutlineInputBorder(),
                  controller: nomorController,
                ),
              ),
              SizedBox(
                width: 21,
              ),
              Expanded(
                child: LabelKecil(
                  label: 'RT',
                  border: OutlineInputBorder(),
                  controller: rtController,
                ),
              ),
              SizedBox(
                width: 21,
              ),
              Expanded(
                child: LabelKecil(
                  label: 'RW',
                  border: OutlineInputBorder(),
                  controller: rwController,
                ),
              ),
            ],
          ),
          LabelTextField(
            label: 'Kelurahan/Desa',
            controller: kelurahanController,
          ),
          LabelTextField(
            label: 'Kecamatan',
            controller: kecamatanController,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16, bottom: 16),
            child: Text(
              'Kabupaten',
              style: TextStyle(
                color: Color(0xFF206766),
                fontSize: 20.0,
              ),
            ),
          ),
          DropDownMenu(
            items: [
              'Yogyakarta',
              'Bantul',
              'Gunungkidul',
              'Sleman',
              'Kulonprogo',
            ],
            value: kabupatenController,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16, bottom: 16),
            child: Text(
              'Provinsi',
              style: TextStyle(
                color: Color(0xFF206766),
                fontSize: 20.0,
              ),
            ),
          ),
          DropDownMenu(
            items: ['DIY'],
            value: provinsiController,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16, bottom: 16),
            child: Text(
              'Kewarganegaraan',
              style: TextStyle(
                color: Color(0xFF206766),
                fontSize: 20.0,
              ),
            ),
          ),
          DropDownMenu(items: ['WNI', 'WNA'], value: kewarganegaraanController),
          Row(
            children: [
              Expanded(
                child: LabelKecil(
                  label: 'Lama Tinggal',
                  border: OutlineInputBorder(),
                  controller: lamaTinggalController,
                ),
              ),
              SizedBox(
                width: 21,
              ),
              Column(
                children: [
                  SizedBox(
                    height: 29,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 12,
                    ),
                    width: 62,
                    height: 50,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xFF206766)),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.add,
                          size: 20,
                          color: Color(0xFF206766),
                        ),
                        Divider(
                          height: 0,
                          color: Color(0xFF206766),
                        ),
                        Icon(
                          Icons.minimize,
                          size: 20,
                          color: Color(0xFF206766),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 21,
              ),
              Expanded(
                child: LabelKecil(
                  label: 'Tahun',
                  border: OutlineInputBorder(),
                  controller: tahunController,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 16,
              bottom: 16,
            ),
            child: TitleLine(
              title: 'Status',
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16, bottom: 16),
            child: Text(
              'Status Perkawinan',
              style: TextStyle(
                color: Color(0xFF206766),
                fontSize: 20.0,
              ),
            ),
          ),
          DropDownMenu(
            items: ['Menikah', 'Belum menikah'],
            value: statusPerkawinanController,
          ),
          LabelTextField(
            label: 'Status hubungan keluarga',
            controller: statusPerkawinanController,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: Text(
              'Pendidikan Terakhir',
              style: TextStyle(
                color: Color(0xFF206766),
                fontSize: 20.0,
              ),
            ),
          ),
          DropDownMenu(
            items: ['SD', 'SMP', 'SMA', 'Sarjana/S1'],
            value: pendidikanTerakhirController,
          ),
          LabelTextField(label: 'Pekerjaan', controller: pekerjaanController),
          ElevatedButton(
            onPressed: () {
              // Navigator.pushReplacement(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) => DataDiri(),
              //   ),
              // );
              print(jenisKelamin);
              print(kabupatenController.text);
              print(pekerjaanController.text);
            },
            child: Text('Submit'),
            style: ElevatedButton.styleFrom(
                primary: Color(0xFF206766),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                padding: EdgeInsets.all(20)),
          )
        ],
      ),
    );
  }
}

class TitleLine extends StatelessWidget {
  const TitleLine({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: TextStyle(
            color: Color(0xFF227471),
            fontSize: 20.0,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(
          width: 10.0,
        ),
        Expanded(
          child: Container(
            height: 2,
            color: const Color(0xFF227471),
          ),
        ),
      ],
    );
  }
}

class LabelTextField extends StatelessWidget {
  const LabelTextField({
    Key? key,
    required this.label,
    required this.controller,
  }) : super(key: key);

  final String label;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    final InputBorder border = OutlineInputBorder(
      borderSide: const BorderSide(
        color: Color(0xFF227471),
        width: 1,
      ),
      borderRadius: BorderRadius.circular(10.0),
    );

    return Padding(
      padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
      child: LabelKecil(
        label: label,
        border: border,
        controller: controller,
      ),
    );
  }
}

class LabelKecil extends StatelessWidget {
  const LabelKecil({
    Key? key,
    required this.label,
    required this.border,
    required this.controller,
  }) : super(key: key);

  final String label;
  final InputBorder border;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            color: Color(0xFF206766),
            fontSize: 20.0,
          ),
        ),
        const SizedBox(
          height: 8.0,
        ),
        TextFormField(
          controller: controller,
          decoration: InputDecoration(
            border: border,
            hintText: label,
            focusedBorder: border.copyWith(
              borderSide: BorderSide(
                width: 3.0,
                color: Color(0xFF206766),
              ),
            ),
            enabledBorder: border,
          ),
        )
      ],
    );
  }
}

class DropDownMenu extends StatefulWidget {
  const DropDownMenu({Key? key, required this.items, required this.value})
      : super(key: key);
  final List<String> items;
  final TextEditingController value;

  @override
  _DropDownMenuState createState() => _DropDownMenuState();
}

class _DropDownMenuState extends State<DropDownMenu> {
  String dropdownValue = '';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    setState(() {
      dropdownValue = widget.items[0];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 1.0,
          color: Color(0xFF206766),
        ),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: DropdownButton<String>(
        isExpanded: true,
        value: dropdownValue,
        icon: const Icon(Icons.arrow_drop_down_sharp),
        elevation: 16,
        style: const TextStyle(color: Color(0xFF206766)),
        onChanged: (String? newValue) {
          setState(() {
            dropdownValue = newValue!;
            widget.value.text = newValue;
          });
        },
        items: widget.items.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }
}
