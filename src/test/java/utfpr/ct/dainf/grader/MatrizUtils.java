/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package utfpr.ct.dainf.grader;

/**
 *
 * @author Wilson
 */
public class MatrizUtils {
    public static String matrizInvalidaRegex(int m, int n) {
        return String.format("^.*[Mm]atriz.+%d\\h*[Xx]\\h*%d.+criada.*$", m, n);
    }

    public static String matrizSomaInvalidaRegex(int m1, int n1, int m2, int n2) {
        return String.format("^.*[Mm]atriz.+%d\\h*[Xx]\\h*%d.+%d\\h*[Xx]\\h*%d.+soma.*$",
                m1, n1, m2, n2);
    }

    public static String matrizProdInvalidoRegex(int m1, int n1, int m2, int n2) {
        return String.format("^.*[Mm]atriz.+%d\\h*[Xx]\\h*%d.+%d\\h*[Xx]\\h*%d.+multi.*$",
                m1, n1, m2, n2);
    }
}
