
def soma(a, b)
  a + b
end

def divisao(a, b)
  raise ArgumentError, "Divisão por zero" if b == 0
  a / b.to_f
end
