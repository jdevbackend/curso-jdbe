public class TiposPrimitivosInteiros {

    /*
    * byte   -> -128    -- 127
    * short  -> -32.768 -- 32.767
    * int    -> -2^31   -- 2^31-1 -> (-2.147.483.648 -- 2.147.483.647)
    * long   -> -2^63   -- 2^63-1 -> (-9.223.372.036.854.775.808 -- 9.223.372.036.854.775.807)
    * */

    public static void main(String[] args) {
        exercicioTipoPrimitivo();
    }

    private static void exercicioTipoPrimitivo() {

        byte byteMenor = -128;
        byte byteMaior = 127;

        System.out.println("Antes da operação: " + byteMenor + " === " + byteMaior);

        byteMenor--;
        byteMaior++;

        System.out.println("Antes da operação: " + byteMenor + " === " + byteMaior);

        short shortMenor = -32768;
        short shortMaior = 32767;

        System.out.println("Antes da operação tipo short: " + shortMenor + " === " + shortMaior);

        shortMenor--;
        shortMaior++;

        System.out.println("Antes da operação tipo short: " + shortMenor + " === " + shortMaior);

    }
}
