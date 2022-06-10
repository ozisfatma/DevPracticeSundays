
/*19. "MathPractice" Class'ının içerisine "practiceSeven" isimli bir method oluşturun. Bu method boy ve kilo değerlerini iki adet decimal parametre olarak kabul etsin, vücut kitle indeksini debug ekranına yazdırsın ve aşağıda belirtilen sonuçları return etsin. Sonuç sıfır veya sıfırdan küçük yada otuz veya otuzdan büyük ise hata mesajı versin. [İpucu: VKI = Kilo(kg)   / (boy(m)  * boy(m)  return type : string]
* Extra : a. VKI 'ni hesaplarken boyun karesini ilgili math metodu ile alınız.
              b. İşlem sonucunu virgülden sonra bir basamak olacak şekilde düzenleyiniz. [bknz: Link]
0 ila 18,4 → Zayıf
18.5 ila 24.9 → Normal
25 ila 29.9 arası → Kilolu*/



public class MathPractice19 {
    public string practiceSeven(decimal boy,decimal kilo) {
        decimal vke=kilo/boy.pow(2); 
        vke=vke.setScale(1);  
        string msg='';
        if(vke<=0 || vke>=30){
            system.debug('Lütfen girmiş olduğunuz boy ve kilo değerlerini kontrol ediniz!');
  
        }else if(vke>0 && vke<18.4){
        msg='Zayif';    
        system.debug('vucud degeriniz => '+ vke);
        system.debug(msg);
            
        }else if(vke>=18.4 && vke<25)  {
            msg='Normal';    
            system.debug('vucud degeriniz=> '+ vke);
            system.debug(msg);   

        } else if(vke>=25 && vke<30){
            msg='Kilolu';    
        system.debug('vucud degeriniz =>'+ vke);
        system.debug(msg);
        }

        return msg;

    }
}
