# Tugas 7: Elemen Dasar Flutter
## Pemrograman Berbasis Platform (CSGE602022) - Semester Ganjil 2023/2024
### Fakultas Ilmu Komputer Universitas Indonesia
#### Ghany Rasyid Prawira - NPM: 2206082392 - Kelas: PBP C

---

## Deskripsi Tugas
Pada tugas ini, kamu akan mengimplementasikan aplikasi yang telah kamu kembangkan menggunakan Flutter berdasarkan beberapa hal yang sudah kamu pelajari selama tutorial.

## Checklist Tugas
- [x] Membuat sebuah program Flutter baru dengan tema inventory seperti tugas-tugas sebelumnya.
- [x] Membuat tiga tombol sederhana dengan ikon dan teks untuk:
    - [x] Melihat daftar item ("Lihat Item")
    - [x] Menambah item ("Tambah Item")
    - [x] Logout ("Logout")
- [x] Memunculkan Snackbar dengan tulisan:
    - [x] "Kamu telah menekan tombol Lihat Item" ketika tombol Lihat Item ditekan.
    - [x] "Kamu telah menekan tombol Tambah Item" ketika tombol Tambah Item ditekan.
    - [x] "Kamu telah menekan tombol Logout" ketika tombol Logout ditekan.
- [x] Menjawab beberapa pertanyaan berikut pada README.md pada root folder. (Di bawah ini)

## Bonus
- [x] Mendapatkan nilai bonus dengan mengimplementasikan warna-warna yang berbeda untuk setiap tombol (Lihat Item, Tambah Item, dan Logout).

## Tenggat Waktu Pengerjaan
Tenggat waktu pengerjaan Tugas 7 adalah Rabu, 8 November 2023, pukul 12.00 siang.

## Pertanyaan
1. **Apa perbedaan utama antara stateless dan stateful widget dalam konteks pengembangan aplikasi Flutter?**

   Stateless widget adalah widget yang tidak memerlukan state. Artinya, mereka tidak akan pernah berubah setelah dibuat. Semua nilai harus final dan mereka tidak memiliki dependensi pada data yang bisa berubah di masa depan.

   Stateful widget adalah widget yang telah mengelola status, yang dapat berubah sepanjang waktu. Selain itu, mereka dapat bereaksi terhadap interaksi pengguna atau perubahan data, dan mereka merebuild diri mereka sendiri dengan data atau status baru.

2. **Sebutkan seluruh widget yang kamu gunakan untuk menyelesaikan tugas ini dan jelaskan fungsinya masing-masing.**
   
   - `MaterialApp`: Membuat instance aplikasi Flutter.
   - `Scaffold`: Memberikan struktur visual dasar untuk aplikasi.
   - `AppBar`: Menampilkan AppBar di atas UI, biasanya berisi judul.
   - `SingleChildScrollView`: Memastikan bahwa UI yang lebih besar dari layar dapat discroll.
   - `Padding`: Menyediakan jarak di dalam widget lain.
   - `Column`: Mengatur widget anak secara vertikal.
   - `GridView.count`: Membuat grid dengan jumlah kolom tertentu.
   - `Material`: Memberikan efek visual pada widget anak.
   - `InkWell`: Memberikan efek interaktif ketika ditekan.
   - `Container`: Menyediakan kotak untuk menyimpan widget lain.
   - `Center`: Menengahkan widget anak.
   - `Icon`: Menampilkan ikon.
   - `Text`: Menampilkan teks.

3. **Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step (bukan hanya sekadar mengikuti tutorial).**
   
   1. Membuat project baru Flutter menggunakan `flutter create nama_project`.
   2. Membuka file `main.dart` dan mengimport `material.dart`.
   3. Membuat class `MyHomePage` yang merupakan stateless widget.
   4. Menambahkan `Scaffold` dan `AppBar`.
   5. Menambahkan kode untuk `GridView` yang menampilkan tombol.
   6. Membuat class `ShopItem` untuk memodelkan data item.
   7. Membuat class `ShopCard` yang mengembalikan `Material` widget.
   8. Menambahkan `InkWell` widget untuk mendeteksi ketukan dan menampilkan Snackbar.
   9. Membuat main function dengan `runApp` dan membuat instance dari `MyApp`.
   10. Menerapkan tema dengan `ThemeData`.
   11. Menjalankan aplikasi di emulator atau perangkat nyata.

4. **Add-Commit-Push ke GitHub**: Pastikan semua perubahan telah di-add (`git add .`), di-commit (`git commit -m "pesan_commit"`), dan di-push (`git push origin main`) ke repsositori GitHub.

----

### Step-by-step Implementasi
1. Menjalankan perintah `flutter create my_inventory_app` untuk membuat proyek baru.
2. Menambahkan `ShopItem` dan `ShopCard` ke dalam project untuk mengelola tampilan item dan interaksi tombol.
3. Melakukan implementasi Snackbar dengan `ScaffoldMessenger` di dalam fungsi `onTap` pada `InkWell`.
4. Menyesuaikan warna setiap tombol dengan menerapkan `color` pada `Material` widget.
5. Menjalankan perintah `flutter run` untuk melihat hasil pada emulator atau perangkat.
6. Melakukan dokumentasi setiap langkah dan menjawab pertanyaan pada `README.md`.
7. Melakukan `add-commit-push` ke GitHub untuk mengupdate perubahan di repositori.

### Akun GitHub
[GitHub Ghany Rasyid Prawira](https://github.com/GhanyR/tugas7)
