import java.time.LocalDate;

public class Variaveis {


    public static void main(String[] args) {
        aulaVariaveis();
    }

    private static void aulaVariaveis() {

        String nome = "Priscila";
        Integer idade = 20;
        Double salario = 10000.30;
        LocalDate dataAdmissao = LocalDate.parse("2023-08-20");

        System.out.println("Nome da Colaboradora: ".concat(nome));
        System.out.println("Idade da Colaboradora: ".concat(idade.toString()));
        System.out.println("Salario: ".concat(salario.toString()));
        System.out.println("Data de admissão: ".concat(dataAdmissao.toString()));
    }
}
