public class TicketBooking {
    //we want to keep track of number of tickets booked.
    string name;
    public integer numberOFTickets;
    public static integer ticketsBooks = 0;

    public void bookTicket (string name, Integer numberOFTickets){
        this.name = name;
        this.numberOFTickets = numberOFTickets;
    }
  
}