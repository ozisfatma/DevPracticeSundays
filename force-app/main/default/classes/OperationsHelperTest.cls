
@isTest
public with sharing class OperationsHelperTest {
   @isTest 
   public static void largestOutOfTwoNumbersTest(){

   test.startTest();
   decimal resultNum =OperationsHelper.largestOutOfTwoNumbers(9,5);
   system.assertEquals(9, resultNum);


   decimal resultNum2 =OperationsHelper.largestOutOfTwoNumbers(5,9);
   system.assertEquals(9, resultNum2);
   test.stopTest();

   }
   @istest
    public static void smallestOutOfThreeNumbersTest(){
        test.startTest();
        decimal result1=OperationsHelper.smallestOutOfThreeNumbers(2,4,6);
        system.assertEquals(2,result1);
        
        decimal result2=OperationsHelper.smallestOutOfThreeNumbers(2,1,6);
        system.assertEquals(1,result2);

        decimal result3=OperationsHelper.smallestOutOfThreeNumbers(2,1,0);
        system.assertEquals(0,result3);
        test.stopTest();
    }
    @isTest 
    public static void sumofPositiveIntegersTest(){
        test.startTest();
        integer result1=OperationsHelper.sumofPositiveIntegers(-4);
        integer result2=OperationsHelper.sumofPositiveIntegers(4);
        test.stopTest();
        system.assertEquals(null,result1 );
        system.assertEquals(10,result2);

    }

    @isTest 
    public static void sumofPositiveIntegersTest2(){
    test.startTest();   
    integer result = OperationsHelper.sumofPositiveIntegers(2,4);
    test.stopTest();
    system.assertEquals(9, result);

    
    }
    @isTest
    public static void  sumofListValuesTest(){
    Test.startTest();
    decimal result1=OperationsHelper.sumofListValues(new List<Decimal>{2,3,4});
    system.assertEquals(9, result1);
    decimal result2=OperationsHelper.sumofListValues(new List<Decimal>());
    system.assertEquals(null, result2);
    Test.stopTest();
    }
    @istest
    public static void averageOfListValuesTest(){
        test.startTest();
        decimal result1=OperationsHelper.averageOfListValues(new List<Decimal>{2,4,6});
        system.assertEquals(4,result1);
        decimal result2=OperationsHelper.averageOfListValues(new List<Decimal>());
        system.assertEquals(null,result2);
        test.stopTest();
    }
    @istest
    public  static void  highestOfListValuestest(){
        test.startTest();
        decimal result1=OperationsHelper.highestOfListValues(new List<Decimal>{2,4,6});
        decimal result2=OperationsHelper.highestOfListValues(new List<Decimal>());
        system.assertEquals(6,result1);
        system.assertEquals(null,result2);
        test.stopTest();
    } 
    @isTest
    public static void lowestOfListValuesTest(){
        List<decimal> list1=new List<decimal>{8,4,1};
        List<decimal> list2=new List<decimal>();
       test.startTest();
       decimal result1=OperationsHelper.lowestOfListValues(list1);
       decimal result2=OperationsHelper.lowestOfListValues(list2);
       test.stopTest();
       system.assertEquals(4,result1);
       system.assertEquals(null,result2);
    }
       @isTest
    public static void reverseOrderPrintTest(){
        List<decimal> list1=new List<decimal>{2,4,6};
        List<decimal> list2=new List<decimal>();
        test.startTest();
        OperationsHelper.reverseOrderPrint(list1);
        system.assertEquals(2,list1.size());
        OperationsHelper.reverseOrderPrint(list2);
        system.assertEquals(null, list2.size());
        test.stopTest();    

    }
}