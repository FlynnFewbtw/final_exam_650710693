import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: const Text('โปรไฟล์ผู้ใช้'),
        centerTitle: true,
        backgroundColor: Colors.black87,
      ),
      body: Center(
        child: Card(
          color: Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          elevation: 10,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage(
                    'https://www.kasandbox.org/programming-images/avatars/leaf-blue.png',
                  ), // ใช้รูปที่อัปเดต
                ),
                const SizedBox(height: 10),
                const Text(
                  'ชื่อผู้ใช้: Thanapat Nimjaroen',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                  ),
                ),
                const Text(
                  'อีเมล: nimjaroen_t@silpakorn.edu',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 169, 169, 169)
                  ),
                ),
                const Divider(
                  color: Colors.white54,
                  thickness: 1,
                  indent: 30,
                  endIndent: 30,
                ),
                ListTile(
                  leading: Icon(Icons.settings, color: Colors.blue),
                  title: Text("การตั้งค่า"),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(Icons.key, color: Colors.blue),
                  title: Text("เปลี่ยนรหัสผ่าน"),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(Icons.question_mark, color: Colors.blue),
                  title: Text("ความเป็นส่วนตัว"),
                  onTap: () {},
                ),
                ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(
                      context,
                    ).showSnackBar(SnackBar(content: Text("แก้ไขโปรไฟล์")));
                  },
                  child: const Text('แก้ไขโปรไฟล์'),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(
                      context,
                    ).showSnackBar(SnackBar(content: Text("ออกจากระบบ")));
                  },
                  child: const Text('ออกจากระบบ'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
