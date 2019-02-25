#1. Obtain the elements of the union between two character vectors.
vec1 = c(rownames(mtcars[1:15,]))
vec2 = c(rownames(mtcars[10:32,]))
vec12<-union(vec1, vec2)
vec12

#2. Get those elements that are common to both vectors.
vec1 = c(rownames(mtcars[1:15,]))
vec2 = c(rownames(mtcars[10:32,]))
commonvec12<-vec1%in%vec2
vec1[commonvec12]

#3. Get the difference of the elements between two character vectors.
vec1 = c(rownames(mtcars[1:15,]))
vec2 = c(rownames(mtcars[10:32,]))

# elements of vec1 which are not present in vec2
vec1[!vec1%in%vec2]

# elements of vec2 which are not present in vec1
vec2[!vec2%in%vec1]

#elements which are not common in vec1 and vec2
union(vec1[!vec1%in%vec2],vec2[!vec2%in%vec1])


#4. Test the quality of two character vectors.
vec1 = c(rownames(mtcars[1:15,]))
vec2 = c(rownames(mtcars[11:25,]))

is.element(vec1,vec2)
identical(vec1,vec2)
setequal(vec1,vec2)
vec1 %in% vec2
