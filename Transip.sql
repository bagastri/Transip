//MembuatDatabase
CREATE DATABASE transip

====================================================================================
//Tabel Pelanggan
CREATE TABLE pelanggan (  
id_pelanggan VARCHAR (16) NOT NULL,  
nama_pelanggan VARCHAR (30) NOT NULL,  
alamat VARCHAR (30) NOT NULL, 
no_tlp INT (12) NOT NULL,
PRIMARY KEY (id_pelanggan)
)

INSERT INTO `pelanggan` (`id_pelanggan`, `nama_pelanggan`, `alamat`, `no_tlp`) VALUES
('101101', 'Maftu Hadi Citra', 'Ngawi', '+6282186448448'),
('101102', 'Putri Agustina', 'Aceh', '+6281393193164'),
('101103', 'Ahmad Nurdiansyah', 'Bekasi', '+6285282541823'),
('101104', 'Dita Wahyu Saputra', 'Ponorogo', '+6281232799196'),
('101105', 'Novita Annisa Daulay', 'Bekasi', '+6287873930130');


//Tabel Karyawan
CREATE TABLE karyawan (  
id_karyawan VARCHAR (16) NOT NULL,  
nama_karyawan VARCHAR (30) NOT NULL,
bagian VARCHAR (30) NOT NULL, 
alamat VARCHAR (30) NOT NULL, 
no_tlp INT (12) NOT NULL,
PRIMARY KEY (id_karyawan)
)  

INSERT INTO `karyawan` (`id_karyawan`, `nama_karyawan`, `bagian`, `alamat`, `no_tlp`) VALUES
('111111', 'Gilang Pamungkas', 'Admin', 'Yogyakarta', '+6281805433890'),
('111112', 'Rifqi Arif Darmawan', 'Admin', 'Lampung', '+6285337644444'),
('111113', 'Dicky Indrawan', 'Staff', 'Malang', '+6285772333924'),
('111114', 'Budi Santoso', 'Staff', 'Jepara', '+6285325088080'),
('111115','Johan Nur Firdaus', 'Staff', 'Kulon Progo', '+6282211162676'),
('111116', 'Herman Wahyu', 'Staff', 'Bantul', '+6283846004428'),
('111117', 'Rizky Nugraha', 'Staff', 'Ponorogo', '+6281394564497');


//Tabel Motor
CREATE TABLE motor (  
no_plat VARCHAR (16) NOT NULL,  
jenis_motor VARCHAR (15) NOT NULL,
merek_motor VARCHAR (15) NOT NULL, 
tahun_motor INT (10) NOT NULL, 
kapasitas_motor VARCHAR (12) NOT NULL,
harga_sewa INT (12) NOT NULL,
PRIMARY KEY (no_plat)
)

INSERT INTO `motor` (`no_plat`, `jenis_motor`, `merek_motor`, `tahun_motor`, `kapasitas_motor`, `harga_sewa`) VALUES
('AB 4313 ZK', 'Beat Fi', 'Honda', '2018', '110cc', '80000'),
('AB 4990 ZB', 'Beat Fi', 'Honda', '2018', '110cc', '80000'),
('AB 4991 ZB', 'Beat Fi', 'Honda', '2018', '110cc', '80000'),
('AB 3155 JT', 'Beat Fi', 'Honda', '2018', '110cc', '80000'),
('AB 3222 JT', 'Beat Fi', 'Honda', '2019', '110cc', '80000'),
('AB 3210 JT', 'Beat Fi', 'Honda', '2019', '110cc', '80000'),
('AB 5941 EK', 'Beat Fi', 'Honda', '2019', '110cc', '80000'),
('AB 4351 EK', 'Beat Fi', 'Honda', '2019', '110cc', '80000'),
('AB 4350 EK', 'Beat Street', 'Honda', '2019', '110cc', '80000'),
('AB 5942 EK', 'Beat Street', 'Honda', '2019', '110cc', '80000'),
('AB 4358 NB', 'Genio', 'Honda', '2019', '110cc', '80000'),
('AB 4357 NB', 'Genio', 'Honda', '2019', '110cc', '80000'),
('AB 3717 JK', 'Scoopy', 'Honda', '2018', '110cc', '80000'),
('AB 3718 JK', 'Scoopy', 'Honda', '2018', '110cc', '80000'),
('AB 4044 IK', 'Spasi Fi', 'Honda', '2016', '110cc', '60000'),
('AB 6642 YG', 'Vario', 'Honda', '2017', '110cc', '90000'),
('AB 6643 YG', 'Vario', 'Honda', '2017', '110cc', '90000'),
('AB 6980 YG', 'Vario', 'Honda', '2017', '110cc', '90000'),
('AB 5629 JG', 'Vario', 'Honda', '2017', '125cc', '90000'),
('AB 2190 ZT', 'New Vario', 'Honda', '2018', '125cc', '90000'),
('AB 2720 ZK', 'New Vario', 'Honda', '2018', '125cc', '90000'),
('AB 3741 YK', 'All New Nmax', 'Yamaha', '2020', '155cc', '120000'),
('AB 3740 YK', 'All New Nmax', 'Yamaha', '2020', '155cc', '120000');


//Tabel Pemesanan
CREATE TABLE pemesanan (  
id_pemesanan VARCHAR (16) NOT NULL,  
id_karyawan VARCHAR (16) NOT NULL,
id_pelanggan VARCHAR (16) NOT NULL, 
jaminan_sewa VARCHAR (30) NOT NULL, 
mulai_sewa DATETIME NOT NULL,
selesai_sewa DATETIME NOT NULL,
jmlh_hari TINYINT (3) NOT NULL, 
tmpt_antar VARCHAR (30) NOT NULL, 
PRIMARY KEY (id_pemesanan)	
) 

INSERT INTO `pemesanan` (`id_pemesanan`, `id_karyawan`, `id_pelanggan`, `jaminan_sewa`, `mulai_sewa`, `selesai_sewa`, `jmlh_hari`, `tmpt_antar`) VALUES
('100001', '111113', '101101', 'KTP,SIM,NPWP', '2021-03-11 07:30:00', '2021-03-13 07:30:00', '2 HARI', 'Grage Ramayana'),
('100002', '111114', '101102', 'KTP,KTM', '2021-03-11 08:00:00', '2021-03-13 08:00:00', '2 HARI', 'Transip'),
('100003', '111115', '101103', 'KTP,SIM,NPWP', '2021-03-11 08:00:00', '2021-03-15 08:00:00', '4 HARI', 'Terminal Jombor'),
('100004', '111116', '101104', 'KTP,SIM,KTP', '2021-03-11 10:00:00', '2021-03-13 10:00:00', '2 HARI', 'Hotel Kandjani'),
('100005', '111117', '101105', 'KTP,STNK,NPWP', '2021-03-11 11:00:00', '2021-03-14 11:00:00', '2 HARI', 'Hotel Cardila');


//Tabel Detail_Pemesanan
CREATE TABLE detail_pemesanan (  
id_dtl_pemesanan VARCHAR (16) NOT NULL,  
id_pemesanan VARCHAR (16) NOT NULL,
no_plat VARCHAR (16) NOT NULL, 
jmlh_hari TINYINT (3) NOT NULL, 
total_harga INT (12) NOT NULL,
jmlh_jas_ujan TINYINT (3) NOT NULL, 
jmlh_helm TINYINT (3) NOT NULL,
STATUS VARCHAR (30) NOT NULL, 
PRIMARY KEY (id_dtl_pemesanan)
)  

INSERT INTO `detail_pemesanan` (`id_dtl_pemesanan`, `id_pemesanan`, `no_plat`, `jmlh_hari`, `total_harga`, `jmlh_jas_ujan`, `jmlh_helm`, `status`) VALUES
('110001', '100001', 'AB 4358 NB', '2 HARI', '160000', '2', '2', 'LUNAS'),
('110002', '100002', 'AB 3717 JK', '2 HARI', '160000', '1', '1', 'LUNAS'),
('110003', '100003', 'AB 3741 YK', '4 HARI', '480000', '0', '0', 'LUNAS'),
('110004', '100004', 'AB 3155 JT', '2 HARI', '160000', '2', '2', 'LUNAS'),
('110005', '100004', 'AB 3222 JT', '2 HARI', '160000', '2', '2', 'LUNAS'),
('110006', '100005', 'AB 2190 ZT', '3 HARI', '270000', '2', '2', 'LUNAS');


//Tabel Pengembalian
CREATE TABLE pengembalian (  
id_pengembalian VARCHAR (16) NOT NULL,  
id_pemesanan VARCHAR (16) NOT NULL,
id_karyawan VARCHAR (16) NOT NULL,
no_plat VARCHAR (16) NOT NULL, 
tmpt_ambil VARCHAR (30) NOT NULL,
perpanjangan VARCHAR (30) NOT NULL,
lama_perpanjangan VARCHAR (30) NOT NULL, 
biaya_perpanjangan INT (12) NOT NULL,
selesai_sewa DATETIME NOT NULL,
STATUS VARCHAR (30) NOT NULL, 
PRIMARY KEY (id_pengembalian)
)  

INSERT INTO `pengembalian` (`id_pengembalian`, `id_pemesanan`, `id_karyawan`, `no_plat`, `tmpt_ambil`, `perpanjangan`, `lama_perpanjangan`, `biaya_perpanjangan`, `selesai_sewa`, `status`) VALUES
('111001', '100001', '111117', 'AB 4358 NB', 'St.Lempuyangan', 'TIDAK', '-', '0', '2021-03-13 07:30:00', 'SELESAI'),
('111002', '100002', '111116', 'AB 3717 JK', 'Kos Room Me', 'YA', '2 HARI', '160000', '2021-03-15 08:00:00', 'SELESAI'),
('111003', '100003', '111115', 'AB 3741 YK', 'Terminal Jombor', 'YA', '4 JAM', '40000', '2021-03-15 12:00:00', 'SELESAI'),
('111004', '100004', '111116', 'AB 3155 JT', 'Hotel Kandjani', 'TIDAK', '-', '0', '2021-03-13 10:00:00', 'SELESAI'),
('111005', '100004', '111114', 'AB 3222 JT', 'Hotel Kandjani', 'TIDAK', '-', '0', '2021-03-13 10:00:00', 'SELESAI'),
('111006', '100005', '111113', 'AB 2190 ZT', 'Hotel Cardila', 'YA', '1 JAM', '10000', '2021-03-14 12:00:00', 'SELESAI');


====================================================================================
//Menampilkan Tabel
SELECT * FROM pelanggan
SELECT * FROM karyawan
SELECT * FROM motor
SELECT * FROM pemesanan
SELECT * FROM detail_pemesanan
SELECT * FROM pengembalian

//Menghitung Jumlah Hari Sewa
SELECT selesai_sewa, mulai_sewa, DATEDIFF(selesai_sewa, mulai_sewa) AS jumlah_hari FROM pemesanan


//Menghitung Jumlah Total Harga Sewa
SELECT motor.harga_sewa, detail_pemesanan.jmlh_hari, (harga_sewa* detail_pemesanan.jmlh_hari) AS total_harga 
FROM motor INNER JOIN detail_pemesanan
ON motor.no_plat = detail_pemesanan.no_plat


//Menampilkan Nota Transaksi
SELECT 
pelanggan.nama_pelanggan AS Nama,
pelanggan.alamat AS Alamat,
pelanggan.no_tlp AS No_Tlp,
motor.no_plat AS No_Plat,
motor.jenis_motor AS Jenis_Motor,
pemesanan.mulai_sewa AS Mulai_Sewa,
pemesanan.selesai_sewa AS Selesai_Sewa,
LPAD(CONCAT(TIMESTAMPDIFF(DAY, pemesanan.mulai_sewa,pemesanan.selesai_sewa),' Hari'),10,' ') AS Jumlah_Sewa,
pemesanan.tmpt_antar AS Tempat_Antar,
pengembalian.tmpt_ambil AS Tempat_Ambil,
motor.harga_sewa AS Harga_Sewa,
CONCAT(FORMAT(SUM(harga_sewa* detail_pemesanan.jmlh_hari), 2)) AS Total_Harga, 
pemesanan.jaminan_sewa AS Jaminan_Sewa,
LPAD(CONCAT((detail_pemesanan.jmlh_jas_ujan), ' Pasang'),10,' ') AS Jas_Ujan,
LPAD(CONCAT((detail_pemesanan.jmlh_helm), ' Buah'),10,' ') AS Helm
FROM ((((pelanggan 
JOIN pemesanan) 
JOIN detail_pemesanan)
JOIN motor)
JOIN pengembalian)
WHERE ((pelanggan.id_pelanggan = pemesanan.id_pelanggan )
AND (pemesanan.id_pemesanan = detail_pemesanan.id_pemesanan )
AND (motor.no_plat = detail_pemesanan.no_plat)
AND (motor.no_plat = pengembalian.no_plat))
GROUP BY pemesanan.id_pemesanan,pelanggan.nama_pelanggan,pelanggan.alamat,pelanggan.no_tlp,
motor.no_plat,motor.jenis_motor,
pemesanan.mulai_sewa,pemesanan.selesai_sewa,detail_pemesanan.jmlh_hari,
pemesanan.tmpt_antar,pengembalian.tmpt_ambil,motor.harga_sewa, pemesanan.jaminan_sewa,
detail_pemesanan.jmlh_jas_ujan,detail_pemesanan. jmlh_helm
ORDER BY pemesanan.mulai_sewa


//Menghitung Total Harga Perpemesanan
SELECT detail_pemesanan.id_pemesanan,
CONCAT(FORMAT(SUM(total_harga),2)) AS Total_Harga
FROM detail_pemesanan
WHERE id_pemesanan = '100004';

SELECT * FROM NotaTransaksi;

CALL NotaByTgl(2021-03-11);





