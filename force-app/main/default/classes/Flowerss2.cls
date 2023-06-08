public with sharing class Flowerss2 {
    // 2 tane class variables olsun. Cicek adi, adet
    String cicekAdi;
    integer adet;
    // cicekleri ve adetlerini key-value(cicekadi-adet) seklinde tutan bir map olsun.
    public static Map<string, integer> cicekSepeti = new Map<string, integer>();

    public Flowerss2() {

    }
    public Flowerss2(string cicekAdi, integer adet) {
        this.cicekAdi = cicekAdi;
        this.adet = adet;
        addFlower(cicekAdi, adet);
    }

    public void setCicekAdi(string cicekAdi) {
        this.cicekAdi = cicekAdi;
    }
    public void setAdet(integer adet) {
        this.adet = adet;
    }
    public string getCicekAdi() {
        return this.cicekAdi;
    }
    public integer getAdet() {
        return this.adet;
    }
    // Public static bir addFlower metodu yazin. 2 parametre alsin cicek adi ve adet olarak. bu cicek benim mapimde var mi? varsa bu adedi onun ustune ekleyecek yoksa yeni bir cicek olarak mape ekleyecek.. 
    public static void addFlower(string cicekAdi, integer adet) {
        if (cicekAdi != null) {
            Boolean isCheck = cicekSepeti.containsKey(cicekAdi);
            if (isCheck) {
               integer newAdet = cicekSepeti.get(cicekAdi) + adet;
               cicekSepeti.put(cicekAdi, newAdet);
            } else {
                cicekSepeti.put(cicekAdi, adet);
            }
        } else {
            System.debug('Lutfen bir cicek adi girin..');
        }
    }
    // Public static bir salesFlower metodu yazin. 2 parametre alsin cicek adi ve adet olarak. bu cicek benim sepetimde varsa ve istenen sayida veya daha fazla ise bu satisi yapip adeti eksiltecek aksi durumlarda uygun uyari mesajlari verecek..

    public static void salesFlower(string cicekAdi, Integer adet) {
        if (cicekAdi!=null) {
            Boolean isCheck = cicekSepeti.containsKey(cicekAdi);
            if (isCheck) {
                if (cicekSepeti.get(cicekAdi)>= adet) {
                    Integer newAdet = (cicekSepeti.get(cicekAdi)) - adet;
                    cicekSepeti.put(cicekAdi, newAdet);
                    
                } else {
                    system.debug(cicekAdi +'ciceginden sepette ' + cicekSepeti.get(cicekAdi) + 'adet bulunmaktadir, talebinizi buna gore duzenleyin');
                }
                
            
            }else{
                system.debug('lutfen bir cicek adi girin');
            }
            
        }

    }
    //stok kontrolu yapan bir method olsun burada her cicekten kac tane var ve toplam kac cicek var bunu gorelim.
    public static void stok() {
        if (!cicekSepeti.isEmpty()) {
            Integer stock = 0;
            for (string cicek : cicekSepeti.keySet()) {
                system.debug(cicek + 'ciceginden '  + cicekSepeti.get(cocek)  + 'adet vardir');
                stok += cicekSepeti.get(cicek);
                
            }
            system.debug('elimizde toplam '  + stock + 'adet bulunmaktadir');

            
        }else {
            system.debug('sepette cicek bulunmamaktadir');
        }
            
    }

}