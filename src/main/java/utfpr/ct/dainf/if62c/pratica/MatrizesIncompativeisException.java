package utfpr.ct.dainf.if62c.pratica;

/**
 * IF62C Fundamentos de Programação 2
 * Exemplo de programação em Java.
 * @author Wilson Horstmeyer Bogado <wilson@utfpr.edu.br>
 * 
 * Exceção lançada quando se tenta realizar uma operação com matrizes de
 * dimensões incompatíveis.
 */
public class MatrizesIncompativeisException extends RuntimeException {
    private final Matriz m1;
    private final Matriz m2;

    protected MatrizesIncompativeisException(Matriz m1, Matriz m2, String msg) {
        super(msg);
        this.m1 = m1;
        this.m2 = m2;
    }
    
    public MatrizesIncompativeisException(Matriz m1, Matriz m2) {
        this(m1, m2, String.format(
            "Matrizes de %dx%d e %dx%d incompatíveis para a operação",
            m1.getMatriz().length, m1.getMatriz()[0].length,
            m2.getMatriz().length, m2.getMatriz()[0].length));
    }

    public Matriz getM1() {
        return m1;
    }

    public Matriz getM2() {
        return m2;
    }    
    
}
