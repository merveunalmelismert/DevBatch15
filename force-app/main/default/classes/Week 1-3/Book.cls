public class Book {
   string title;
   string author;
   decimal price;


   public Book(string title, string author, decimal price){
    // this. means class variables
    this.title=title;
    this.author=author;
    this.price=price;
    system.debug('print this.title '  + this.title);// this one is class variab;e
    system.debug('print title ' + title); //parameter comes from constructor
// eger isimler ayni olmasaydi this. yazmaya gerek kalmazdi. title= t koysak mesela this. koymasak da oluyor.
   }
   public void printDetails(){
    systen.debug('title of book is '  + this.title);
    system.debug('author of book is ' + this.author);
    system.debug('price of book ' + this.price);
   }


   // get methods are used to access private members outsde of the class

   public string getTitle(){
    return this.title; // is it mandatory?
   
    public string getAuthor(){
        return this.author;

        public string getPrice(){
            return this.price; 
}
}
   }