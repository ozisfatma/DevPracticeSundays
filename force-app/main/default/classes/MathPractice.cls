public class MathPractice {
    public decimal fiyat;
    public decimal practiceFour(decimal tutar) {
            fiyat=tutar;
            decimal bonus;
            if(tutar<=0){
                bonus=0;
            }else if(tutar<50){
                system.debug('Bonus kazanamadiniz!');
            }else if(tutar<200){
                bonus=10;
                //system.debug(fiyat + '$ tutarinda alisveris karsiligi '+bonus+ ' $ tutarinda bonus kazandiniz.');
            }else if(tutar<500){
                bonus=30;
            }else if(tutar>500){
                bonus=50;
                //system.debug(fiyat + '$ tutarinda alisveris karsiligi '+bonus+ ' $ tutarinda bonus kazandiniz.');
            }
            return bonus;
    }
}
