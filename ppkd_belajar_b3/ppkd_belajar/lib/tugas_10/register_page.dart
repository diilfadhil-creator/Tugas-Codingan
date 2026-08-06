import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'result_page.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();

  final namaController = TextEditingController();
  final emailController = TextEditingController();
  final hpController = TextEditingController();

  void validasiForm() {
    List<String> error = [];

    if (namaController.text.isEmpty) {
      error.add("Nama Lengkap");
    }

    if (emailController.text.isEmpty || !emailController.text.contains("@")) {
      error.add("Email");
    }

    if (!_formKey.currentState!.validate()) {
      showDialog(
        context: context,
        builder: (_) => AlertDialog(
          title: const Text("Data Belum Lengkap"),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Lottie.asset('assets/animation/cat.json', height: 120),
              const SizedBox(height: 10),
              Text("Field berikut masih salah:\n\n${error.join("\n")}"),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Kembali"),
            ),
          ],
        ),
      );

      return;
    }

    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text("Konfirmasi"),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Lottie.asset('assets/animation/jam.json', height: 120),
            const SizedBox(height: 10),
            const Text("Apakah data sudah benar?"),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text("Kembali"),
          ),

          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => ResultPage(
                    nama: namaController.text,
                    email: emailController.text,
                    hp: hpController.text,
                  ),
                ),
              );
            },
            child: const Text("Ya"),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(top: 5),
          child: const Text(
            "Pendaftaran \nYayasan Kopia Raya Insani",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.blueAccent,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        centerTitle: true,
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Form(
          key: _formKey,

          child: ListView(
            children: [
              TextFormField(
                controller: namaController,
                decoration: const InputDecoration(labelText: "Nama Lengkap"),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Nama wajib diisi";
                  }
                  return null;
                },
              ),

              const SizedBox(height: 15),

              TextFormField(
                controller: emailController,
                decoration: const InputDecoration(labelText: "Email"),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Email wajib diisi";
                  }

                  if (!value.contains("@")) {
                    return "Email tidak valid";
                  }

                  return null;
                },
              ),

              const SizedBox(height: 15),

              TextFormField(
                controller: hpController,
                decoration: const InputDecoration(labelText: "Nomor HP"),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Nomor Hp Tidak Boleh Kosong";
                  }
                  return null;
                },
              ),

              const SizedBox(height: 15),

              ElevatedButton(
                onPressed: validasiForm,
                child: const Text("Daftar"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
