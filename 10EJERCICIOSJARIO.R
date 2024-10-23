# EJERCICIO 1 CLASIFICAR NÚMEROS POSITIVOS O NEGATIVOS
for (i in 1:10) {
  num <- as.numeric(readline("Introduce un número: "))
  
  resultado <- ifelse(num > 0, "positivo", ifelse(num < 0, "negativo", "cero"))
  
  cat("El número", num, "es", resultado, "\n")
}

# EJERCICIO 2 CALCULAR NUMEROS PARES E IMPARES
lista_numeros <- sample(1:100, 100)
pares <- lista_numeros[lista_numeros %% 2 == 0]
impares <- lista_numeros[lista_numeros %% 2 != 0]

cat("Lista de números pares:", pares, "\n")
cat("Lista de números impares:", impares, "\n")

# EJERCICIO 3 SUMA DE LOS PRIMEROS N NÚMEROS
N <- 10
suma <- sum(1:N)
print(suma)
# EJERCICIO  4 NUMERO DE FIBONACCI
fib_seq <- c(0, 1)
while (length(fib_seq) < 20) {
  fib_seq <- c(fib_seq, sum(tail(fib_seq, 2)))
}
cat("Secuencia de Fibonacci:", fib_seq, "\n")

# EJERCICIO  5 CÁLCULO FACTORIAL
N <- as.numeric(readline(prompt="Introduce un número N: "))

if (is.na(N) || N < 0) {
  print("Por favor introduce un número entero válido y positivo.")
} else {
  factorial <- 1
  for (i in 1:N) {
    factorial <- factorial * i
  }
  print(paste("El factorial de", N, "es:", factorial))
}

#  EJERCICIO 6 JUEGO ADIVINA EL NÚMERO
num_oculto <- sample(1:100, 1)
encontrado <- FALSE

repeat {
  intento <- as.integer(readline("Adivina un número entre 1 y 100: "))
  
  if (intento == num_oculto) {
    cat("Felicidades!!!! Adivinaste el número secreto", num_oculto, "\n")
    break
  } else if (intento > num_oculto) {
    cat("El número es más pequeño.\n")
  } else {
    cat("El número es más grande.\n")
  }
}

# EJERCICIO 7 VALIDACIÓN DE CONTRASEÑA
clave_correcta <- "12345"
intentos <- 1

repeat {
  clave <- readline("Introduce la contraseña: ")
  
  if (clave == clave_correcta) {
    cat("Acceso permitido.\n")
    break
  } else {
    cat("Contraseña incorrecta.\n")
  }
  
  if (intentos == 3) {
    cat("Has sido bloqueado por demasiados intentos fallidos.\n")
    break
  }
  
  intentos <- intentos + 1
}

# EJERCICIO 8 SUMA DE DÍGITOS DE UN NÚMERO
numero <- as.numeric(readline(prompt="Introduce un número entero: "))
suma <- 0

while (numero > 0) {
  suma <- suma + numero %% 10
  numero <- numero %/% 10
}

print(paste("La suma de los dígitos es:", suma))

# EJERCICIO 9 IMPRESIÓN DE PATRONES (PIRÁMIDE)
altura <- 5

for (i in 1:altura) {
  espacios <- strrep(" ", altura - i)
  asteriscos <- strrep("*", i * 2 - 1)
  cat(espacios, asteriscos, "\n")
}

# EJERCICIO 10 NÚMEROS PRIMOS DEL 2 AL 100
primos <- function(n) {
  if (n < 2) return(FALSE)
  for (i in 2:sqrt(n)) {
    if (n %% i == 0) return(FALSE)
  }
  return(TRUE)
}

numeros_primos <- Filter(primos, 2:100)
cat("Números primos del 2 al 100:", numeros_primos, "\n")
