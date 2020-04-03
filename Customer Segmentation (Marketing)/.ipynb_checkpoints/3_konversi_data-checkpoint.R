pelanggan <- read.csv("Customer\ Segmentation\ (Marketing)/customer_segments.txt", sep="\t")
#Konversi data menjadi numerik
pelanggan_matrix <- data.matrix(pelanggan[c("Jenis.Kelamin", "Profesi", "Tipe.Residen")])
