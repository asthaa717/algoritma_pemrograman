#CALL A FUNCTION
my_function = function(){
  print("say the name")
}
  my_function()
#ARGUMENTS IN FUNCTION
my_function= function(fname) {
  paste(fname, "lee")
}
my_function("seokmin")
my_function("jihoon")
my_function("chan")
#NUMBER OF ARGUMENTS IN FUNCTION
my_function= function(fname, lname) {
  paste(fname, lname)
}
my_function("Jeon", "Wonwoo")
#DEFAULT PARAMETER VALUE 
my_function= function(country = "United Kingdom") {
  paste("i am from", country)
}
my_function("England")
my_function("Scotland")
my_function()
my_function("North Ireland")
my_function("Wales")
#RETURN VALUE IN FUNCTION
my_function= function(x) {
  return(19*x)
}
print(my_function(2))
print(my_function(7))
print(my_function(0))
#NESTED IN FUNCTION
#1
nested_function = function(x, y){
  a = x + y
  return(a)
}
nested_function(nested_function(5,6), nested_function(8,7))
#2
outer_func = function(x){
  inner_func= function(y){
    a= x+y
    return(a)
  }
  return(inner_func)
}
output= outer_func(6)
output(8)
#RECURSION IN FUNCTION
tri_recursion = function(k) {
  if(k>1) {
    result = k+tri_recursion(k-1)
    print(result)
  } else {
    result = 1
    return(result)
  }
}
tri_recursion(9)
#GLOBAL VARIABLE
#1
txt = "very demure"
my_function = function() {
  paste("She is", txt)
}
my_function()
#2
txt = "SEVENTEEN"
my_function= function() {
  txt= "funny"
  paste("Going Seventeen is", txt)
}
my_function()
txt
#THE GLOBAL ASSIGNMENT OPERATOR IN FUNCTION
#1
my_function = function() {
  txt <<- "Gorgeous"
  paste("Niki Zefanya is", txt)
}
my_function()
print(txt)
#2
txt= "coquette"
my_function= function() {
  txt<="pretty"
  paste("you are so", txt)
}
my_function()
paste("you are so", txt)
#MACAM-MACAM FUNCITON
#built-in
#1
rata_rata= median(c(3, 4, 7, 10))
print(rata_rata)
#2
hitungRataRata= function(angka) {
  rata_rata = mean(angka)
  return(rata_rata)
}
hitungRataRata(c(5, 7, 9, 15))
#3
jumlah = function(...) {
  sum(...)
}
jumlah(123, 223, 323, 423, 523)
#USER DEFINED (FUNGSI CUSTOM)
hitungLuasPersegiPanjang = function(panjang, lebar) {
  luas = panjang * lebar
  return(luas)
}
hitungLuasPersegiPanjang(12,10)
#PACKAGE & LIBRARY
#modul eksternal
#contoh kasus 1
library(dplyr)
data = data.frame(nama = c("Wonu", "Dino", "Igyu"), nilai = c(78, 86, 92))
data_filtered = data %>% filter(nilai > 78)
print(data_filtered)
#conoth kasus 2
library(ggplot2)
data_penjualan = data.frame(
  nama = c("Senin", "Selasa", "Rabu", "Jumat"),
  penjualan = c(8000, 2000, 6800, 10000)
)

ggplot(data_penjualan, aes(x = nama, y = penjualan)) +
  geom_bar(stat = "identity", fill = "pink") + 
  ggtitle("penjualan warung 17")