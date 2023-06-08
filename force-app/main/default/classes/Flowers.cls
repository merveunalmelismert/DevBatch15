public class Flowers {
    //2 tane class variable olsun. Cicek adi, adet
    //cicekleri ve adetlerini key value iliskisi icinde(cicek adi- adet) sekilde tutan bir map im olsun.
    string cicekAdi; 
    integer adet;

    public static Map<String,Integer> cicekSepeti = new Map <string,Integer>();
    public Flowers(){

    }
    public Flowers (string cicekAdi, integer adet) {
        this.cicekAdi= cicekAdi;
        this.adet = adet;
        
    }

    public void setCicekAdi(string cicekAdi){
        this.setCicekAdi = cicekAdi;
    }
    public void setAdet(integer adet){
        this.adet = adet;
    }
    public String getCicekAdi(){
        return.this.cicekAdi;
        
    }
    public integer getAdet() {
        return this.adet;
    }

    //pubic static bir addFlower methodu yazalim, 2 parametre alsin cicek adi ve adet olarak
    //bu cicek benim mapimde var mi? varsa bu adedei onun ustune eklecek yoksa yeni bir ciceck olarak uzerine mi ekleyecek.

    public static void addFlower (string cicekAdi, Integer adet) {
        if (cicekAdi != null) {
            Boolean isCheck = cicekSepeti.containsKey(cicekAdi);
            if (isCheck) {
                integer newAdet = cicekSepeti.get(cicekAdi) + adet;
                cicekSepeti.put(cicekAdi, newAdet);
                
            }else {
                cicekAdi.put(cicekAdi, adet);
            }
        }else {
            system.debug('lutfen bir cicek adi girin');
        }

    }

    //public static bir salesFlower methodu yazalim, 2 parametre alsin==> cicek adi ve adet.
    //bu cicek benim sepetimde varsa ve istenen sayida  veya daha fazla ise bu satisi yapip adeti eksiltecek.
    //aksi durumlarda uygun uyari mesajlari verecek

    public static void salesFlower(string cicekAdi, Integer adet) {
        if (condition) {
            
        }

        
    }
}