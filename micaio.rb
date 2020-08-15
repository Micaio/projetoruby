#inicio do programa
require 'byebug'
puts "Ola,Qual o  seu nome completo ?"
nome = gets.chomp

# pegando as datas.
def pegarDatas
data = [0,0,0,0,0,0]

puts "\nEm qual dia  vc  nasceu?  porfavor utilize numeros."
data[0] = gets.chomp.to_i
puts "Em qual mês vc  nasceu ?  porfavor utilize numeros."
data[1] = gets.chomp.to_i
puts "Em qual  ano vc  nasceu ?  porfavor utilize numeros."
data[2] = gets.chomp.to_i
puts "informe  o  dia  de  hj.  porfavor utilize numeros."
data[3] = gets.chomp.to_i
puts "informe em qual  mes  vc  esta.  porfavor utilize numeros."
data[4] = gets.chomp.to_i
puts "informe em  qual  ano  vc esta.  porfavor utilize numeros."
data[5] = gets.chomp.to_i
data
end

# verificação dos  valores da data.
def verificacao (x,y,z)
    contador = 0
    if ((x >= 1 &&  x <= 31) && (y >= 1 && y <= 12) && (z <= 2020) )
    contador = 1
    else
    contador = 2
    end 
contador
end 

# metodo para pegar o cudo da  idade.
def cuboidade x
data = x
if data[4] > data[1]
idade = (data[2] - data[5])*-1
elsif data[4] == data[1]
    if data[3] >= data[0]
        idade = (data[2] - data[5])*-1
    else
        idade =(data[2] -(data[5]-1))*-1
    end
else
    idade = (data[2] -(data[5]-1))*-1
end
idade = idade**3
end

#pega a metade de uma palavra e o reverso de uma outra.
def  metadeStrin
    puts  "informe uma  palavra obter a sua  metade."
    var = gets.chomp
    var =  var.insert(-1,'*') 
    id = var.index('*')
    id = id /2 
    var = var[0,id]
    puts "informe uma palavra para revertela."
    rever = gets.chomp
    rever = rever.reverse
    id = "A metade da palavra é: #{var}\nA sua palavra invertida é:#{rever}"
    id
end

#pega o somatorio dos numeros da data de nasc.
def somatorio numero
    unidades= numero%10
    numero=numero/10
    dezenas=numero%10
    numero=numero/10
    centenas=numero%10
    mi=numero/10

    resultado= unidades+dezenas+centenas+mi
    resultado
end

# resultado final
def resultado (nome, dataFormatada, idade, stri, somaData)
    puts "================================================================="
    puts "Nome:" + nome
    puts "Data de Nascimento:" + dataFormatada
    puts "Idade ao  cubo :#{idade}" 
    puts stri
    puts "O somatorio da sua data de nascimento é:#{somaData}"
    puts "================================================================="
end


data = pegarDatas
x = verificacao(data[0], data[1], data[2])
x += verificacao(data[3], data[4], data[5])
dataFormatada = ""

if x == 2
dataFormatada = " #{data[0]} / #{data[1]} / #{data[2]}"
idade = cuboidade data
stri = metadeStrin
somaData = somatorio(data[2]) + somatorio(data[1]) + somatorio(data[0])
resultado(nome, dataFormatada, idade, stri, somaData)
else 
    puts "Algum valor informado está invalido!"
end
