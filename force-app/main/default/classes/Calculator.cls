public  class Calculator {
    public decimal  dynamicCalculation( decimal a,decimal b, string operation){
        decimal result;
        if(operation=='addition'){
            result =a+b;
        }else if(operation=='substraction'){
            result= a-b;
        }else if(operation=='division'){
            result =a/b;
        }else if( operation=='multiplication'){
            result= a*b;
        }
            return result;


    }
}
