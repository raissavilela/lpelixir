#Definição dos módulos que vão possuir todas as funções
defmodule LP do

  # As funções começam com 'def' e terminam com 'end'
  def main do

    # O método 'gets' obtém a entrada do usuário
    # O pipe pega o resultado obtido na esquerda e passa para o lado direito 
    nome = IO.gets("Digite o seu nome? ")
    |> String.trim #Pega o resultado obtido pela entrada do usuário e converte para uma String com todos os espaços em branco entre os caracteres removidos 

    # IO.puts é o método de output de dados. 
    # O uso de '#{}' permite a concatenação de variáveis
    IO.puts "Ola, #{nome}"
    # Chamada de função
    function()
  end

  # ---------------------------------- TIPOS DE DADOS ----------------------------------

  # As variáveis devem começar com letras minúsculas ou com underline(_) e letras maíusculas;
  # Tipos de dados: Integers, Floats, Atoms, Ranges, Binaries, Lists, Maps, Tuples.

  def function do

    # Não há tamanho máximo para inteiros. 
    # is_integer() é uma função que verifica se o parâmetro passado é do tipo Integer.
    numero_int = 9999999999
    IO.puts "Integer #{is_integer(numero_int)}"

    # O tipo Float possui 16 casas de precisão
    # is_float() é uma função que verifica se o parâmetro passado é do tipo Float. 
    numero_float = 3.14159
    IO.puts "Float #{is_float(numero_float)}"

    # Atom (átomos) é um tipo de dados cujo valor é seu próprio nome. 
    # Muitas das vezes eles são utilizados para expressar o estado de uma operação, usando valores como :ok, :error.
    # Os tipos booleanos também são Atoms 
    # is_atom() 
    IO.puts "Atom #{is_atom(:Verde)}"

    # ---------------------------------- STRINGS ----------------------------------

    # As String (conjunto de caracteres) são definidos pelas aspas duplas.
    str = "Linguagens de Programacao"

    # String.length() é uma função que retorna o tamanho da string passada por parâmetro. 
    IO.puts "Tamanho: #{String.length(str)}"

    # Os operadores <> são utilizados para concatenar duas strings.
    str_concatenada = str <> " " <> "e uma otima materia."

    # Os operadores === comparam se duas strings são iguais.
    IO.puts "Iguais : #{"Palavra" === "palavra"}"

    # A função String.contains?() recebe dois parâmetros p1 e p2 e verifica se p2 está contido em p1. 
    IO.puts "P1 esta contido em P2 ? #{String.contains?(str, "Programação")}"

    # A função String.first retorna o primeiro caractere contido na string recebida por parâmetro. 
    IO.puts "Primeiro caractere : #{String.first(str)}"


    # A função String.at() recebe os seguintes paramentros: str: String; posicao: Integer.
    # A função String.at() retorna o caractere contido na posição 'posicao' da string 'str'.  
    IO.puts "Index 4 : #{String.at(str, 4)}"

    # A função String.slice() recebe os seguintes parâmetros: str: String; p1: Integer; p2: Integer; 
    # A função String.slice() retorna a substring contida entre as posicoes 'p1' e 'p2' da string 'str'.
    IO.puts "Substring : #{String.slice(str, 3, 8)}"

    # String.slipt() é uma função responsável em dividir uma string em várias strings de acordo com um determinado padrão. 
    # IO.inspect é um método de output que permite inspensionar os valores em qualquer lugar do código, além de permitir o output decorado. 
    IO.inspect String.split(str_concatenada, " ")

    # String.reverse() é uma função que retorna a string passada por parâmetro invertida. 
    IO.puts String.reverse(str_concatenada)

    # String.upcase() converte todas as letras minúsculas da string passada por parâmetro em letras maiúsculas.
    IO.puts String.upcase(str_concatenada)

    # String.downcase() converte todas as letras maiúsculas da string passada por parâmetro em letras minúsculas.
    IO.puts String.downcase(str_concatenada)

    # Converte o primeiro caractere na string fornecida em maiúsculas e o restante em minúsculas.
    IO.puts String.capitalize(str_concatenada)

    # ---------------------------------- OPERAÇÕES MATEMÁTICAS ----------------------------------

    IO.puts "5 + 4 = #{5+4}" # Adição
    IO.puts "5 - 4 = #{5-4}" # Subtração
    IO.puts "5 * 4 = #{5*4}" # Multiplicação
    IO.puts "5 / 4 = #{5/4}" # Divisão
    IO.puts "5 div 4 = #{div(5,4)}" # Divisão
    IO.puts "5 rem 4 = #{rem(5,4)}" # Resto da divisão 

    # ---------------------------------- COMPARAÇÃO ENTRE NÚMEROS  ----------------------------------

    # Compara duas variáveis idependente do tipo 
    IO.puts "4 == 4.0 : #{4 == 4.0}"

    # Compara duas variáveis levando em consideração o tipo 
    IO.puts "4 === 4.0 : #{4 === 4.0}"

    # Verifica se há desigualdade de valor 
    IO.puts "4 != 4.0 : #{4 != 4.0}"

    # Verifica se há desigualdade de valor e tipo 
    IO.puts "4 !== 4.0 : #{4 == 4.0}"

    # Verifica se o valor do primeiro parâmetro é maior que o valor do segundo parâmetro
    IO.puts "5 > 4 : #{5 > 4}"

    # Verifica se o valor do primeiro parâmetro é maior ou igual ao valor do segundo parâmetro 
    IO.puts "5 >= 4 : #{5 >= 4}"

    # Verifica se o valor do primeiro parâmetro é menor que o valor do segundo parâmetro 
    IO.puts "5 < 4 : #{5 < 4}"

    # Verifica se o valor do primeiro parâmetro é menor ou igual o valor do segundo parâmetro
    IO.puts "5 <= 4 : #{5 <= 4}"

    # ---------------------------------- OPERADORES LÓGICOS ----------------------------------

    idade = 16

    # 'and' resulta em um valor VERDADEIRO se os dois valores de entrada da operação forem VERDADEIROs.
    IO.puts "Pode votar e dirigir : #{(idade >= 16) and (idade >= 18)}"

    # 'or'  resultada em um valor VERDADEIRO se apenas um dos valores de entrada da operação for VERDADEIRO.
    IO.puts "Pode votar ou dirigir : #{(idade >= 16) or (idade >= 18)}"

    # 'not' inverte o resultado, ou seja, se a entrada for verdadeira ela retorna falsa e vice-versa.
    IO.puts not true

    # ---------------------------------- ESTRUTURA DE SELEÇÃO ----------------------------------
    
    if idade >= 16 do
      IO.puts "Tire o titulo de eleitor."
    else
      IO.puts "Ainda nao tem idade o suficiente para tirar o titulo de eleitor."
    end

    # 'Unless' funciona como a estrutura de seleção 'if'. No entanto, a condição que ele recebe será negada, ou seja: (unless idade === 18) == (idade !== 18).
    unless idade === 18 do
      IO.puts "Voce nao possui 18 anos de idade."
    else
      IO.puts "Voce possui 18 anos de idade."
    end

    # 'Cond' funciona como a estrutura de seleção 'elseif'
    cond do
      idade === 12 -> IO.puts "Voce ainda nao pode tirar o titulo de eleitor."
      idade >= 16 -> IO.puts "Voce já tirou o seu titulo de eleitor?"
      idade >= 18 -> IO.puts "Voce já tirou a sua CNH?"
      true -> IO.puts "Default"
    end

    # 'Case' funciona como 'switch case' 
    case 2 do
      1 -> IO.puts "Entrou na opção 1"
      2 -> IO.puts "Entrou na opção 2"
      _ -> IO.puts "Default"
    end

    # Operador ternário
    # Se a condição de 'if' for verdadeira, ele executa o 'do', senão executa o 'else'.
    IO.puts "Ternario : #{if idade > 18, do: "E obrigatorio votar", else: "Nao pode votar"}"

    # ---------------------------------- TUPLAS ----------------------------------

    # Tuplas possuem entre 2 e 4 valores de qualquer tipo. 
    # Tuplas são utilizadas para correspondência de padrões e não para enumerar.

    # Cria uma Tupla, cujo nome é "estatisticas"
    # A função is_tuple verifica se o parâmetro corresponde a uma Tupla.
    estatisticas = {75, 1.80, :Pedro}
    IO.puts "Tupla : #{is_tuple(estatisticas)}"

    # A função Tuple.append() é utilizada para adicionar valores à Tupla
    estatisticas2 = Tuple.append(estatisticas, 42)

    # A função elem(t, n) retorna os valores na posição 'n' que estão presentes dentro da tupla 't'.
    IO.puts "Idade : #{elem(estatisticas2, 3)}"

    # A função tuple_size retorna o tamanho da Tupla passada por parâmetro.
    IO.puts "Tamanho : #{tuple_size(estatisticas2)}"

    # A função Tuple.delete_at(t, n) remove o indice 'n' da tupla 't'.
    estatisticas3 = Tuple.delete_at(estatisticas2, 0)

    # A função Tuple.insert_at(t, p, v) insere na posicao 'p' da tupla 't' o valor 'v'.
    estatisticas4 = Tuple.insert_at(estatisticas3, 0, 1974)
    IO.inspect estatisticas4

    # A função Tuple.duplicate(v, qtde) cria uma tupla com o valor 'v' na 'qtde' de vezes determinada.
    tuplaDuplicada = Tuple.duplicate(0, 5)
    IO.inspect tuplaDuplicada

    # É possível usar a Tupla para correspondência de padrões
    {peso, altura, nome} = {75, 1.80, :Pedro}
    IO.puts "Peso : #{peso}"
    IO.puts "Altura : #{altura}"
    IO.puts "Nome : #{nome}"

    # ---------------------------------- LISTAS ----------------------------------

    # As Listas podem ser criadas com qualquer tipo de dados
    lista1 = [1,2,3]
    lista2 = [4,5,6]

    # É possível concatenar uma lista na outra, utilizando o operador ++ 
    lista3 = lista1 ++ lista2

    # É possível subtrair valores de uma lista, utilizando o operador --
    lista4 = lista3 -- lista1

    # 'in' é utilizado para saber se um valor está presente em uma determinada lista.
    IO.puts 6 in lista4

    # head = indica a posição 0 na lista 
    # tail = indica todo o restante da lista (tirando a posicao 0)
    # [head | tail] é utilizado para separar o valor da posicao 0 dos outros valores da lista
    [head | tail] = lista3

    # A saída dessa execução será: apenas o valor na posição 0 
    IO.puts "Posicao[0] : #{head}"

    # A saída dessa execução será: todos os valores da lista excluindo apenas a posição 0
    IO.inspect tail

    # Inspenciona o que será impresso na tela 
    IO.inspect [97,98]

    # É uma maneira de forçar que a inspeção imprima os dados na tela como uma lista.
    IO.inspect [97,98], charlists: :as_lists

    # Enum pode enumerar sobre listas 
    Enum.each tail, fn item ->
      # Imprime na tela um item por vez da lista 'tail'
      IO.puts item
    end

    #Exemplo
    palavras = ["Palavras", "aleatorias", "presentes", "na", "lista"]
    Enum.each palavras, fn palavra ->
      #Imprime cada palavra presente na lista de palavras
      IO.puts palavra
    end

    # List.delete() é uma função que remove da lista o dado passado por parâmetro
    IO.puts imprimir_lista(List.delete(palavras,"Palavras"))

    # List.delete_at() é uma função que remove da lista o dado na posição passada por parâmetro
    IO.puts imprimir_lista(List.delete_at(palavras,1))

    # List.insert_at() é uma função que insere o valor passado por parâmetro na posição indicada da lista
    IO.puts imprimir_lista(List.insert_at(palavras,4, "Yeah"))

    # List.first() é uma função que retorna o valor presente na primeira posição da lista
    IO.puts List.first(palavras)

    # List.last() é uma função que retorna o valor presente na última posição da lista 
    IO.puts List.last(palavras)

    # É possível criar uma lista de tuplas, com chaves e valores
    estatisticas5 = [nome: "Pedro", altura: 1.80, peso: 75]
    IO.inspect estatisticas5

    # ---------------------------------- MAPAS ----------------------------------

    # Os "maps" contém a estrutura de pares de chave-valor 
    capitais = %{"Belo Horizonte" => "Minas Gerais",
    "Pernambuco" => "Recife", "Macapa" => "Amapa"}

    # Retornam o valor passando a chave correspondente à aquela posição
    IO.puts "A capital de Recife e  #{capitais["Recife"]}"

    # É possível utilizar atoms como chave
    capitais2 = %{maceio: "Alagoas",
    fortaleza: "Ceara", macapa: "Amapa"}

    IO.puts "A capital do Amapa e #{capitais2.macapa}"

    # Map.put() insere uma nova chave-valor em um determinado 'map'.
    capitais3 = Map.put(capitais, "Sao Paulo", "Sao Paulo")
    IO.inspect capitais3

    # ---------------------------------- CORRESPONDÊNCIA DE PADRÕES ----------------------------------

    # Com as correspondências de padrões é possível recuperar dados e estruturas de dados
    
    [comprimento, largura] = [40, 90]
    IO.puts "Comprimento : #{comprimento}"
    IO.puts "Largura : #{largura}"

    # Essa estrutura permite que você faça atribuição de valores, desde que as estruturas sejam iguais. 
    [_, [_, a]] = [20, [30, 40]]
    IO.puts "Valor (a) : #{a}"

    # ---------------------------------- FUNÇÕES ANÔNIMAS ----------------------------------

    # As funções anônimas não possuem nome e também não podem ser passadas para outra função; 
    # fn é utilizado para definir funções anônimas 
    somar = fn (x, y) -> x + y end
    IO.puts "Somar(5 + 5) = #{somar.(5,5)}"

    # A função acima pode ser abreviada da seguinte forma: 
    subtrair = &(&1 - &2)
    IO.puts "Subtrair(7 - 6) = #{subtrair.(7,6)}"

    # É possível utilizar a mesma função para receber diferentes quantidades de parâmetros
    somar_varios = fn
      # Somar com dois parâmetros
      {x,y} -> IO.puts "#{x} + #{y} = #{x+y}"
      # Somar com três parâmetros
      {x,y,z} -> IO.puts "#{x} + #{y} + #{z} = #{x+y+z}"
    end

    somar_varios.({1,2})
    somar_varios.({1,2,3})

    # ---------------------------------- ENUM ----------------------------------
    
    # Enum.all() é uma função para analisar todos os valores dentro de uma lista
    # Essa execução resultará na verificação de todos os valores da lista, para identificar quais valores desta lista são pares
    IO.puts "Lista de valores pares : #{Enum.all?([1,2,3],
    fn(n) -> rem(n,2) == 0 end)}"

    # Enum.any() é uma função para analisar se pelo menos um valor dentro da lista obedece uma determinada condição 
    # Essa execução resultará na verificação da lista, para identificar se pelo menos um dos valores é par 
    IO.puts "Item par : #{Enum.any?([1,2,3],
    fn(n) -> rem(n,2) == 0 end)}"

    # Enum.each() é uma função utilizada para executar a função para cada elemento dentro do Enum 
    Enum.each([1,2,3], fn(n) -> IO.puts n end)

    # Enum.map() é uma função que retorna uma lista que é resultado da execução sob cada elemento dentro do Enum
    lista_duplicada = Enum.map([1,2,3], fn(n) -> n * 2 end)
    IO.inspect lista_duplicada

    # Enum.reduce() é uma função dada para cada elemento do Enum para reduzí-lo a um único elemento. 
    # Esta função retorna uma tupla onde o primeiro elemento é o Enum mapeado e o segundo é a soma dos valores do Enum
    soma_valores = Enum.reduce([1,2,3], fn(n, soma) -> n + soma end)
    IO.puts "Soma dos valores do Enum : #{soma_valores}"

    # Reestrutura o Enum, removendo todos os elementos duplicados
    IO.inspect Enum.uniq([1,2,2])

    # ---------------------------------- LISTA DE COMPREENSÕES  ----------------------------------

    # Fornece uma maneira de executar ações em uma determinada lista 

    # Essa execução resulta na multiplicação por 2 de cada valor da lista
    lista_duplicada2 = for n <- [1,2,3], do: n * 2
    IO.inspect lista_duplicada2

    # Essa execução resulta na criação de uma lista com apenas números pares
    lista_numeros_pares = for n <- [1,2,3,4], rem(n,2) == 0, do: n
    IO.inspect lista_numeros_pares

    # ---------------------------------- MANIPULAÇÃO DE EXCEÇÕES ----------------------------------
    
    # Permite a tratativa de erros 

    err = try do
      5 / 0
    rescue
      ArithmeticError -> "Nao e possivel realizar divisao por zero(0)!!!"
    end

    IO.puts err

    # ---------------------------------- LAÇOS DE REPETIÇÃO ----------------------------------

    # Loops funcionam como na maioria das linguidadens, incrementando ou decrementando um valor 
    # Como todas as variáveis são imutáveis, as repetições acontecem de forma recursiva
    IO.puts "Soma : #{somar_lista([1,2,3])}"

    # Chamada de repetição
    loop(5,1)

    # ---------------------------------- RECURSION ----------------------------------
    
    # Chamada de uma função recursiva
    IO.puts "Fatorial de 3 : #{fatorial(4)}"


    # ---------------------------------- CONCORRÊNCIA ----------------------------------

    # Permite a execução de vários blocos de código de uma só vez

    # A função spawn() executa o código especificado em um intervalo de tempo indefinido
    # A função spawn() retorna o ID do processo (PID)
    spawn(fn() -> loop(50, 1) end)
    spawn(fn() -> loop(100, 50) end)

    # É possível enviar uma mensidadem durante a execução de cada processo. 
    send(self(), {:portugues, "Juliano"})

    receive do
      {:ingles, nome} -> IO.puts "Good morning #{nome}"
      {:portugues, nome} -> IO.puts "Bom dia #{nome}"
      {:espanhol, nome} -> IO.puts "Buenos días #{nome}"

      # Caso não tenha nenhuma mensidadem correspondente, pode-se emitir um tempo limite de espera 
      after
      500 -> IO.puts "Acabou o tempo de espera!!"
    end
  end

  # ---------------------------------- FUNÇÕES RECURSIVAS ----------------------------------

    # Imprimir lista de forma recursiva
    def imprimir_lista([palavra|palavras]) do
      IO.puts palavra
      imprimir_lista(palavras)
    end
    def imprimir_lista([]), do: nil

    # Função para calcular o fatorial de um número
    def fatorial(num) do
      # Condição de parada das chamadas recursivas
      if num <= 1 do
        1
      else
        result = num * fatorial(num - 1)
        result
      end
    end

    # Demonstração de um loop recursivo: 
    # Soma valores de uma lista e toma uma decisão caso tenha uma lista vazia 
    def somar_lista([]), do: 0

    # Esvazia a lista conforme são adicionados valores com somar_lista()
    def somar_lista([h|t]), do: h + somar_lista(t)

    # Caso o primeiro valor do loop seja zero, essa execução é finalizada (nil === null)
    def loop(0,_), do: nil

    # Função de repetição recursiva 
    def loop(maximo, minimo) do
      if maximo < minimo do
       loop(0, minimo)
     else
       IO.puts "Valor maximo : #{maximo}"
        loop(maximo - 1, minimo)
     end
    end
end