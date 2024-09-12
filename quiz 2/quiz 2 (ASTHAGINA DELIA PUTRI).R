#if-else
angka = 20
if (angka > 10) {
  print("angka lebih besar dari 10")
} else {
  print("angka lebih kecil atau sama dengan 10")
}
#nested-if
x = 52 
if (x>20) {
  print("Above twenty")
  if (x>30) {
    print("and also above 20!")
  } else {
    print("but not above 20.")
  }
} else {
  print("below 10.")
}
#if-AND
a = 100
b = 77
c = 200
if ( a > b & c > a) {
  print("both conditions are true")
}
#if-OR
a = 100
b = 77
c = 200
if ( a > b | c > a) {
  print("at least one of the conditions is true")
}
#else-if
nilai = 77
if (nilai >= 90) {
  print("nilai a")
} else if (nilai >= 77) {
  print("nilai b")
} else {
  print("nilai c")
}
#while
count = 11
while(count <= 15) {
  print(count)
  count = count + 1
}
#while-break
i = 2
while (i < 6) {
  print(i)
  i = i + 1
  if (i==5) {
    break
  }
}
#while-next
i = 1
while (i < 7) {
  i = i + 1
  if (i==4) {
    next
  }
  print(i)
}
#if-else + while loops
dice = 0
while ( dice <= 5) {
  if  (dice < 5) {
    print("No yahtzee")
} else {
  print("yahtzee!")
}
dice = dice + 1
}
#for loop
for (i in 11:15) {
  print(i)
}
fruits = list("grape", "strawberry", "pear")
for (x in fruits) {
  print(x)
}
dice = c(75, 76, 77, 78, 79, 80)
for (x in dice) {
  print(x)
}
#nested-for
adj = list("blue", "big", "tasty")
fruits = list("grape", "strawberry", "pear")
  for (x in adj) {
    for (y in fruits) {
      print(paste(x, y))
    }
  }
#for-break
fruits = list("grape", "strawberry", "pear")
  for (x in fruits) {
    if ( x == "pear") {
    }
    print(x)
  }
#for-next
fruits = list("grape", "strawberry", "pear")
for (x in fruits) {
  if ( x == "strawberry") {
    next
  }
  print(x)
}
#if-else + for loops
dice = 2:7
for(x in dice) {
  if ( x==7) {
    print(paste("the dice number is", x, "yahtzee!"))
  } else {
    print(paste("the dice number is", x, "not yahtzee"))
  }
}
#fungsi logika
#all
all(c(TRUE, TRUE, TRUE))
all(c(FALSE, FALSE, FALSE))
#is.na
is.na(c(1, 2, NA))
#any
any(c(FALSE, TRUE, FALSE))
#ifelse
angka = c(25, 30, 35)
hasil = ifelse(angka > 30, "lebih besar", "lebih kecil atau sama")
print(hasil)
#fungsi kontrol
#return
kuadrat = function(x) {
  hasil = x^2
  return(hasil)
  print("ini tidak akan dicetak karena return sudah dipanggil.")
}

print(kuadrat(5))
#stop
cekbilangan = function(x) {
  if (x<0) {
    stop("error: bilangan negatif tifak diperbolehkan")
  } else {
    print("bilangan valid")
  }
}

cekbilangan(5)

#warning
ceknilai = function(x) {
  if (x==0) {
    warning("peringatan: nilai sama dengan nol.")
  }
  print("program tetap berjalan meskipun ada peringatan.")
}

ceknilai(0)

ceknilai(4)

#try
result = try(log(4), silent = TRUE)
if (inherits(result, "try-error")) {
  print("terjadi kesalahan, tidak bisa menghitung log dari angka negatif")
} else {
  print(result)
}
#tryCatch
hasil = tryCatch({
  log(-5)
},
error = function(e) {
  print("terjadi kesalahan: log dari bilangan negatif tidak mungkin.")
},
warning = function(w) {
  print("peringatan: ada yang tidak benar.")
},
finally = {
  print("eksekusi trycatch selesai.")
})