# split(separator, string) → divide uma string em uma lista.
split(",", "a,b,c")

# join(separator, list) → junta uma lista em uma única string.
join("-", ["a", "b", "c"]) 
# resultado → "a-b-c"

# chomp(string) → remove o caractere de nova linha \n do final da string.
chomp("hello\n") 
# resultado → "hello"

# Funções de String Válidas no Terraform:

# Manipulação de strings
text = "  Hello World  "
  
# Básicas
lower_text = lower("HELLO")           # "hello"
upper_text = upper("hello")           # "HELLO"
title_text = title("hello world")     # "Hello World"

# Limpeza
trimmed = trim(text, " ")             # "Hello World"
chomped = chomp("hello\n")            # "hello"

# Divisão e junção
parts = split(" ", "hello world")      # ["hello", "world"]
joined = join("-", ["hello", "world"]) # "hello-world"

# Substring
sub = substr("hello", 1, 3)            # "ell"

# Formatação
formatted = format("Hello %s!", "World")  # "Hello World!"

# Substituição
replaced = replace("hello world", "world", "terraform")  # "hello terraform"

# slice(list, start, end) → existe no Terraform, mas é uma função de lista, não de string.
slice(["a","b","c","d"], 1, 3)