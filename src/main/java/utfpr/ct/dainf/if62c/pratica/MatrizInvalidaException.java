package utfpr.ct.dainf.if62c.pratica;

/**
 * IF62C Fundamentos de Programação 2
 * Exemplo de programação em Java.
 * @author Wilson Horstmeyer Bogado <wilson@utfpr.edu.br>
 * 
 * Exceção lançada quando uma matriz tem dimensões inválidas.
 */
public class MatrizInvalidaException extends Exception {
    private final int numLinhas;
    private final int numColunas;

    public MatrizInvalidaException(int linhas, int colunas) {
        super(String.format("Matriz de %dx%d não pode ser criada.",
                linhas, colunas));
        this.numLinhas = linhas;
        this.numColunas = colunas;
    }

    public int getNumLinhas() {
        return numLinhas;
    }

    public int getNumColunas() {
        return numColunas;
    }
    
}
