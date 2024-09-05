#Operasi Dasar
sum=2+3
sum
diff=5-3
diff
product=10*4
product
quotient=8/4
quotient
power=2^4
power
#operasi ekspresi
result=(10+5)*(6/2)-3
result
#Manipulasi string
full_name=paste("Asthagina", "Delia")
full_name
length=nchar("hi, astha!")
length
sub_string=substr("hi, astha!", 1, 3)
sub_string
#Manipulasi vektor
numbers=c(3, 4, 5, 6, 7)
numbers
doubled=numbers*3
doubled
first_element=numbers[3]
first_element
#pengenalan matriks
mat=matrix(1:4, nrow=2, ncol=2)
mat
element=mat[2,2]
element
#operasi pada matriks
mat2=matrix(4:7, nrow=2, ncol=2)
mat2
sum_matrix=mat+mat2
sum_matrix
product_matrix=mat%*%mat2
product_matrix
transposed_mat=t(mat)
transposed_mat
inverse_mat=solve(mat)
inverse_mat