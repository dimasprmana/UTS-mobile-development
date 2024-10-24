import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil Saya'),
        backgroundColor: Color.fromARGB(255, 26, 81, 199),
      ),
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: ListView(
          children: [
            Center(
              child: CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('asset/profile.jpg'),
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: Text(
                'Dimas Permana',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            Center(
              child: Text(
                'ACTIVE',
                style: TextStyle(color: Colors.green),
              ),
            ),
            SizedBox(height: 40),
            buildInfoRow('STATUS:', 'Mahasiswa'),
            buildInfoRow('PRODI :', 'Teknologi Rekayasa Perangkat Lunak'),
            buildInfoRow('EMAIL :', 'dimaspermana@gmail.com'),
            buildInfoRow('ALAMAT :', 'Glagah, Kec.Glagah, Kab.Banyuwangi'),
            buildInfoRow('NO TELP :', '0859175722735'),
            SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(
                    context, '/');
              },
              child: Text('Keluar'),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Color.fromARGB(255, 26, 81, 199),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildInfoRow(String title, String info) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
          SizedBox(width: 10),
          Expanded(
            child: Text(
              info,
              style: TextStyle(fontSize: 15),
            ),
          ),
        ],
      ),
    );
  }
}
