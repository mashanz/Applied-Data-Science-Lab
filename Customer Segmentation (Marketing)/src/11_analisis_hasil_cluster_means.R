# Bagian Data Preparation
pelanggan <- read.csv("customer_segments.txt", sep="\t")
pelanggan
pelanggan_matrix <- data.matrix(pelanggan[c("Jenis.Kelamin", "Profesi", "Tipe.Residen")])
pelanggan_matrix
pelanggan <- data.frame(pelanggan, pelanggan_matrix)
pelanggan
Profesi <- unique(pelanggan[c("Profesi","Profesi.1")])
Profesi
Jenis.Kelamin <- unique(pelanggan[c("Jenis.Kelamin","Jenis.Kelamin.1")])
Jenis.Kelamin
Tipe.Profesi <- unique(pelanggan[c("Tipe.Residen","Tipe.Residen.1")])
Tipe.Profesi
pelanggan$NilaiBelanjaSetahun <- pelanggan$NilaiBelanjaSetahun/1000000
pelanggan$NilaiBelanjaSetahun
field_yang_digunakan = c("Jenis.Kelamin.1", "Umur", "Profesi.1", "Tipe.Residen.1","NilaiBelanjaSetahun")
field_yang_digunakan
# Bagian K-Means
set.seed(100)
segmentasi <- kmeans(x=pelanggan[field_yang_digunakan], centers=5, nstart=25)
segmentasi
pelanggan$cluster <- segmentasi$cluster
pelanggan$cluster
# Analisa hasil
Melihat cluster means dari objek 
segmentasi$centers
