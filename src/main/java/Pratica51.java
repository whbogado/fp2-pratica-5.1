import utfpr.ct.dainf.if62c.pratica.Matriz;
import utfpr.ct.dainf.if62c.pratica.MatrizInvalidaException;
import utfpr.ct.dainf.if62c.pratica.ProdMatrizesIncompativeisException;
import utfpr.ct.dainf.if62c.pratica.SomaMatrizesIncompativeisException;

/**
 * IF62C Fundamentos de Programação 2
 * Exemplo de programação em Java.
 * @author Wilson Horstmeyer Bogado <wilson@utfpr.edu.br>
 */
public class Pratica51 {

    public static void main(String[] args) {
        
        Matriz A = null, B = null, C = null, D, E;
        double[][] m;
        
        // tentando criar uma matriz com 0 linhas
        try {
            A = new Matriz(0, 3);
        } catch (MatrizInvalidaException e) {
            System.out.println(e.getLocalizedMessage());
        }
        
        try {
            A = new Matriz(2, 3);
            m = A.getMatriz();
            m[0][0] = 1.00;
            m[0][1] = 1.01;
            m[0][2] = 1.02;
            m[1][0] = 1.10;
            m[1][1] = 1.11;
            m[1][2] = 1.12;
            
            B = new Matriz(2, 3);
            m = B.getMatriz();
            m[0][0] = 2.00;
            m[0][1] = 2.01;
            m[0][2] = 2.02;
            m[1][0] = 2.10;
            m[1][1] = 2.11;
            m[1][2] = 2.12;
            
            C = new Matriz(3, 1);
            m = C.getMatriz();
            m[0][0] = 3.00;
            m[1][0] = 3.11;
            m[2][0] = 3.22;
        } catch (MatrizInvalidaException e) {
            System.out.println(e.getLocalizedMessage());
        }
        
        // tentando somar matrizes com dimensões diferentes
        try {
            D = A.soma(C);
        } catch (SomaMatrizesIncompativeisException e) {
            System.out.println(e.getLocalizedMessage());
        }
        
        // tentando multiplicar matrizes com dimensões incompatíveis
        try {
            E = A.prod(B);
        } catch (ProdMatrizesIncompativeisException e) {
            System.out.println(e.getLocalizedMessage());
        }
        
        // executando as operações com matrizes de dimensoes compativeis
        D = A.soma(B);
        System.out.println("A + B = " + D);
        E = A.prod(C);
        System.out.println("A * C = " + E);
    }
}
