Feature: Avalia a Prática 4.2 de IF62C-Fundamentos de Programação 2
    Como professor da disciplica de Fundamentos de Programação 2
    Quero avaliar a prática 4.2
    A fim de verificar a compreensão dos estudantes

    Background:
        Given the maximum grade is 100
        Given the main class is 'Pratica51'
        Given I set the script timeout to 3000
        Given I evaluate 'import utfpr.ct.dainf.if62c.pratica.*'
        Given I evaluate 'import utfpr.ct.dainf.grader.*'
        Given I evaluate 'import java.util.regex.*'
    
    Scenario: Verifica se a classe MatrizInvalidaException inválida esta corretamente definida
        Given I report 'Avaliando item 3...'
        Given class 'utfpr.ct.dainf.if62c.pratica.MatrizInvalidaException' exists store class in <matinvClass>
        And class <matinvClass> has 'public' modifier
        And class 'java.lang.Exception' is assignable from <matinvClass>
        Then award 6 points

    Scenario: Verifica se a classe MatrizInvalidaException implementa getNumLinhas()
        Given class <matinvClass> declares 'getNumLinhas()' method save in <gnlMethod>
        And member <gnlMethod> has 'public' modifier
        And method <gnlMethod> returns type 'int'
        Then award 7 points
        
    Scenario: Verifica se a classe MatrizInvalidaException implementa getNumColunas()
        Given class <matinvClass> declares 'getNumColunas()' method save in <gncMethod>
        And member <gncMethod> has 'public' modifier
        And method <gncMethod> returns type 'int'
        Then award 7 points
        
    Scenario: Verifica se a classe MatrizInvalidaException está corretamente definida
        Given I report 'Avaliando item 4...'
        Given class 'utfpr.ct.dainf.if62c.pratica.MatrizInvalidaException' exists store class in <matinvClass>
        And class <matinvClass> has 'public' modifier
        And class 'java.lang.Exception' is assignable from <matinvClass>
        Then award 5 points

    Scenario: Verifica se Matriz(int,int) lança MatrizInvalidaException (linhas <= 0)
        Given I evaluate 'int dim1 = TestUtils.random(1,5)'
        Given I evaluate 'int dim2 = TestUtils.random(-5,0)'
        And evaluating 'new Matriz(dim1,dim2)' throws instance of 'utfpr.ct.dainf.if62c.pratica.MatrizInvalidaException' save in <matinvExcpt>
        And expression 'matinvExcpt.getNumLinhas()' evaluates to <dim1>
        And expression 'matinvExcpt.getNumColunas()' evaluates to <dim2>
        And I evaluate 'excptMsg = matinvExcpt.getMessage()'
        And I evaluate 'excptRegex = MatrizUtils.matrizInvalidaRegex(dim1,dim2)'
        And <excptMsg> matches regex <excptRegex>
        Then award 7 points

    Scenario: Verifica se Matriz(int,int) lança MatrizInvalidaException (colunas <= 0)
        Given evaluating 'new Matriz(dim2,dim1)' throws instance of 'utfpr.ct.dainf.if62c.pratica.MatrizInvalidaException' save in <matinvExcpt>
        And expression 'matinvExcpt.getNumLinhas()' evaluates to <dim2>
        And expression 'matinvExcpt.getNumColunas()' evaluates to <dim1>
        And I evaluate 'excptMsg = matinvExcpt.getMessage()'
        And I evaluate 'excptRegex = MatrizUtils.matrizInvalidaRegex(dim2,dim1)'
        And <excptMsg> matches regex <excptRegex>
        Then award 8 points

    Scenario: Verifica se a classe MatrizesIncompativeisException está corretamente definida
        Given I report 'Avaliando item 5...'
        Given class 'utfpr.ct.dainf.if62c.pratica.MatrizesIncompativeisException' exists store class in <matincompatClass>
        And class <matincompatClass> has 'public' modifier
        And class 'java.lang.RuntimeException' is assignable from <matincompatClass>
        And class <matincompatClass> declares 'MatrizesIncompativeisException(utfpr.ct.dainf.if62c.pratica.Matriz,utfpr.ct.dainf.if62c.pratica.Matriz)' constructor save in <dummyConstructor>
        And class <matincompatClass> declares 'getM1()' method save in <dummyMethod>
        And class <matincompatClass> declares 'getM2()' method save in <dummyMethod>
        Then award 10 points

    Scenario: Verifica se a classe SomaMatrizesIncompativeisException está corretamente definida
        Given I report 'Avaliando item 6...'
        Given class 'utfpr.ct.dainf.if62c.pratica.SomaMatrizesIncompativeisException' exists store class in <somaincompatClass>
        And class <somaincompatClass> has 'public' modifier
        And class 'utfpr.ct.dainf.if62c.pratica.MatrizesIncompativeisException' is assignable from <somaincompatClass>
        Then award 5 points

    Scenario: Verifica se Matriz.soma(Matriz) lança a exceção SomaMatrizesIncompativeisException
        Given I report 'Avaliando item 7...'
        Given I evaluate 'int dim1 = TestUtils.random(1,4)'
        Given I evaluate 'int dim2 = TestUtils.random(1,4)'
        And I evaluate 'Matriz mat1 = new Matriz(dim1,dim2)'
        And I evaluate 'Matriz mat2 = new Matriz(dim1+1,dim2+1)'
        And evaluating 'mat1.soma(mat2)' throws instance of 'utfpr.ct.dainf.if62c.pratica.SomaMatrizesIncompativeisException' save in <somaincompatExcpt>
        Then award 5 points
        Given I evaluate 'excptMsg = somaincompatExcpt.getMessage()'
        Given I evaluate 'excptRegex = MatrizUtils.matrizSomaInvalidaRegex(dim1,dim2,dim1+1,dim2+1)'
        And <excptMsg> matches regex <excptRegex>
        Then award 10 points

    Scenario: Verifica se a classe ProdMatrizesIncompativeisException está corretamente definida
        Given I report 'Avaliando item 8...'
        Given class 'utfpr.ct.dainf.if62c.pratica.ProdMatrizesIncompativeisException' exists store class in <prodincompatClass>
        And class <prodincompatClass> has 'public' modifier
        And class 'utfpr.ct.dainf.if62c.pratica.MatrizesIncompativeisException' is assignable from <prodincompatClass>
        Then award 5 points

    Scenario: Verifica se Matriz.prod(Matriz) lança a exceção ProdMatrizesIncompativeisException
        Given I report 'Avaliando item 9...'
        Given I evaluate 'int dim1 = TestUtils.random(1,4)'
        Given I evaluate 'int dim2 = TestUtils.random(1,4)'
        And I evaluate 'Matriz mat1 = new Matriz(dim1,dim2)'
        And I evaluate 'Matriz mat2 = new Matriz(dim2+1,dim1+1)'
        And evaluating 'mat1.prod(mat2)' throws instance of 'utfpr.ct.dainf.if62c.pratica.ProdMatrizesIncompativeisException' save in <prodincompatExcpt>
        Then award 5 points
        Given I evaluate 'excptMsg = prodincompatExcpt.getMessage()'
        Given I evaluate 'excptRegex = MatrizUtils.matrizProdInvalidoRegex(dim1,dim2,dim2+1,dim1+1)'
        And <excptMsg> matches regex <excptRegex>
        Then award 10 points

    Scenario: Verifica se exibe algo numérico na saída
        Given I report 'Avaliando item 10...'
        Given I evaluate 'testMain = new Pratica51()'
        Given I set output to <testOut>
        And I evaluate 'testMain.main(new String[0])'
        And I set output to <default>
        And <testOut> matches regex '.*\d+.*' with 'Pattern.DOTALL' option
        Then award 10 points


#    Scenario: Verifica se a classe Pratica43 existe no pacote padrão e contem o método main (10 pontos)
#        Given I report 'Iniciando avaliação...'
#        Given I report 'Avaliando item 3...'
#        Given class 'Pratica43' exists store class in <mainClass>
#        And class <mainClass> has 'public' modifier
#        Then award 5 points
#        Given class <mainClass> declares 'main(java.lang.String[])' method save in <mainMethod>
#        And method <mainMethod> returns type 'void'
#        And member <mainMethod> has 'public' modifier
#        And member <mainMethod> has 'static' modifier
#        Then award 5 points
#
#    Scenario: Verifica se a interface Figura existe
#        Given I report 'Avaliando item 4...'
#        Given class 'utfpr.ct.dainf.if62c.pratica.Figura' exists store class in <figuraInterface>
#        And <figuraInterface> is an interface
#        Then award 3 points
#
#    Scenario: Verifica se a interface FiguraComEixos existe e extende Figura
#        Given class 'utfpr.ct.dainf.if62c.pratica.FiguraComEixos' exists store class in <figeixosInterface>
#        And <figeixosInterface> is an interface
#        And class 'utfpr.ct.dainf.if62c.pratica.Figura' is assignable from <figeixosInterface> 
#        Then award 3 points
#
#    Scenario: Verifica se a interface FiguraComEixos declara o método getEixoMaior()
#        Given class <figeixosInterface> declares 'getEixoMaior()' method save in <gemaiorMethod>
#        And method <gemaiorMethod> returns type 'double'
#        Then award 3 points
#
#    Scenario: Verifica se a interface FiguraComEixos declara o método getEixoMenor()
#        Given class <figeixosInterface> declares 'getEixoMenor()' method save in <gememprMethod>
#        And method <gememprMethod> returns type 'double'
#        Then award 3 points
#
#    Scenario: Verifica se a classe Elipse existe e implementa a interface FiguraComEixos
#        Given class 'utfpr.ct.dainf.if62c.pratica.Elipse' exists store class in <elipseClass>
#        Given class 'utfpr.ct.dainf.if62c.pratica.FiguraComEixos' is assignable from <elipseClass> 
#        Then award 4 points
#
#    Scenario: Verifica se a classe Circulo existe e extende Elipse
#        Given class 'utfpr.ct.dainf.if62c.pratica.Circulo' exists store class in <circuloClass>
#        Given class 'utfpr.ct.dainf.if62c.pratica.Elipse' is assignable from <circuloClass>  
#        Then award 4 points
#
#    Scenario: Verifica se a interface FiguraComLados existe
#        Given I report 'Avaliando item 5...'
#        Given class 'utfpr.ct.dainf.if62c.pratica.FiguraComLados' exists store class in <figladosInterface>
#        And <figladosInterface> is an interface
#        Then award 10 points
#
#    Scenario: Verifica se a interface FiguraComLados declara getLadoMenor()
#        Given class <figladosInterface> declares 'getLadoMenor()' method save in <glmenorMethod>
#        And method <glmenorMethod> returns type 'double'
#        Then award 10 points
#
#    Scenario: Verifica se a interface FiguraComLados declara getLadoMaior()
#        Given class <figladosInterface> declares 'getLadoMaior()' method save in <glmaiorMethod>
#        And method <glmaiorMethod> returns type 'double'
#        Then award 10 points
#
#    Scenario: Verifica se a classe Retangulo implementa FiguraComLados
#        Given I report 'Avaliando item 6...'
#        Given class 'utfpr.ct.dainf.if62c.pratica.Retangulo' exists store class in <retanguloClass>
#        And class 'utfpr.ct.dainf.if62c.pratica.FiguraComLados' is assignable from <retanguloClass>
#        Then award 10 points
#
#    Scenario: Verifica se a classe Quadrado implementa FiguraComLados
#        Given class 'utfpr.ct.dainf.if62c.pratica.Quadrado' exists store class in <quadradoClass>
#        Given class 'utfpr.ct.dainf.if62c.pratica.FiguraComLados' is assignable from <quadradoClass>
#        Then award 5 points
#        Given class 'utfpr.ct.dainf.if62c.pratica.Retangulo' is assignable from <quadradoClass>
#        Then award 5 points
#
#    Scenario: Verifica se a classe TrianguloEquilatero implementa FiguraComLados
#        Given class 'utfpr.ct.dainf.if62c.pratica.TrianguloEquilatero' exists store class in <equilateroClass>
#        Given class 'utfpr.ct.dainf.if62c.pratica.FiguraComLados' is assignable from <equilateroClass>
#        Then award 5 points
#        Given class 'utfpr.ct.dainf.if62c.pratica.Retangulo' is assignable from <equilateroClass>
#        Then award 5 points
#
#    Scenario: Verifica se exibe algo numérico na saída (10 pontos)
#        Given I report 'Avaliando item 7...'
#        Given I evaluate 'testMain = new Pratica43()'
#        Given I set output to <testOut>
#        And I evaluate 'testMain.main(new String[0])'
#        And I set output to <default>
#        And <testOut> matches regex '.*\d+.*' with 'Pattern.DOTALL' option
#        Then award 10 points

    Scenario: Report final grade.
        Given I report grade formatted as 'FINAL GRADE: %.1f'
