
    //one testclass per class or trigger.
    //@istest annotation is used to make our clas as a test class
    @istest
    public class Calculator9Test {
        //create test method inside test class
        //test method means we are writing a method to TEST a unit of actual code
        //requeriment for test method static-- public or private, static, returns void and take no parameter
        @istest
        public static void testMethod1() {   //test methods cannot have any parameters.
            Calculator9 c = new Calculator9();
            c.add(1.1, 8.5);
        }
    }
