 # variable

num_var <- 42
print(num_var)

str_var <- "i like R"

vec_var <- c(10,20,30,40,50)
class(str_var)

class(num_var)

list_var <- list(name = "vk",age = 30,score = c(50,60,54,65,85))
list_var[1]
list_var[["name"]]
list_var$name


df <- data.frame(
  name = c("vk","alex","mano"),
  age = c(20,40,25),
  score = c(50,65,50)
)
