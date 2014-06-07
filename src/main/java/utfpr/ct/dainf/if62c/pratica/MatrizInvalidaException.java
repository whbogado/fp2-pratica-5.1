package utfpr.ct.dainf.if62c.pratica;

/**
 * IF62C Fundamentos de Programação 2
 * Exemplo de programação em Java.
 * @author Wilson Horstmeyer Bogado <wilson@utfpr.edu.br>
 * 
 * Exceção lançada quando uma matriz tem dimensões inválidas.
 */
public class MatrizInvalidaException extends Exception {
    private final int linhas;
    private final int colunas;

    public MatrizInvalidaException(int linhas, int colunas) {
        super(String.format("Matriz de %dx%d não pode ser criada.",
                linhas, colunas));
        this.linhas = linhas;
        this.colunas = colunas;
    }

    public int getLinhas() {
        return linhas;
    }

    public int getColunas() {
        return colunas;
    }
    
}
