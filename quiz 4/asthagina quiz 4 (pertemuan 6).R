#seleksi kolom baris 
df= data.frame(
  nama=c("Astha", "Jabi", "Enji", "Nopi"),
  umur=c(18, 17, 19, 20),
  nilai=c(90, 83, 80, 88)
)
df_selected=df[, c("nama", "nilai")]
df_selected
df_filtered=df[df$nilai>83,]
df_filtered
#filtering data
df_filtered=df[df$umur>19,]
df_filtered
#sorting data 
df_sorted= df[order(-df$nilai),]
df_sorted
#pembuatan kolom baru
df$nilai_kategori=ifelse(df$nilai>83, "tinggi", "rendah")
df
library(dplyr)
df=mutate(df, nilai_perc = nilai / 100)
df
df_trans=transmute(df, nama, nilai_perc)
df_trans
df_summary= df%>%
  group_by(nama) %>%
  summarise(mean_nilai=mean(nilai))
df_summary
#mengatasi nilai NA 
df_kelas=data.frame(
  nama=c("Astha", "Jabi", "Enji", "Nopi"),
  kelas=c("A", "B", "A", "B")
)
df_joined=left_join(df, df_kelas, by = "nama")
df_joined
df_na = data.frame(
  nama=c("Astha", "Jabi", NA, "Nopi"),
  nilai=c(90, 83, NA, 88)
)
df_na= na.omit(df_na)
df_na
#analisis deskriptif
mtcars
?mtcars
data_cars=mtcars
dim(mtcars)
names(mtcars)
rownames(data_cars)
#print variable varians
mtcars$disp
sort(mtcars$disp)
summary(mtcars)
max(mtcars$disp)
min(mtcars$disp)
which.max(mtcars$hp)
which.min(mtcars$hp)
rownames(mtcars)[which.max(mtcars$hp)]
rownames(mtcars)[which.min(mtcars$hp)]
mean(mtcars$disp)
median(mtcars$disp)
names(sort(-table(mtcars$disp)))[3]
#distribusi data
data = c(46, 23, 70, 89, 45, 56, 74, 34, 67, 98)
hist(data,
     main="histogram sebaran data",
     xlab="nilai",
     ylab="frekuensi",
     col="pink",
     border="black")