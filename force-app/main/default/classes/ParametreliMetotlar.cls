public  class ParametreliMetotlar {
   public void dersSonucu(){
    string ad = 'Melis';
    string ders = 'Turkce';
    integer note = 70;
    boolean isPass = True;

    system.debug(ad +' '+ ders + 'dersi sinavindan' + ' ' + note + 'notunu aldi. Basai duurmu;' +isPass);
   }
   public void dersDurumu (string isim, string ders, integer note, boolean isPass){
    system.debug(isim +' '+ ders + 'dersi sinavindan' + ' ' + note + 'notunu aldi. Basai duurmu;' +isPass);

   }
}