/**
 * Created by olegb on 05.01.2022.
 */

public with sharing class PurchaseOrdersTriggerHandler {
    public static void Handle(List<Purchase_Orders__c> oldR, List<Purchase_Orders__c> newR, TriggerOperation triggerOperation){
        switch on triggerOperation
        {
            when AFTER_UPDATE
            {

            }
        }
    }

    private static void CheckStateAndChangeInStock(List<Purchase_Orders__c> oldR, List<Purchase_Orders__c> newR){
        List<Id> completed = new List<Id>();

        for(Integer i =0; i< oldR.size(); ++i){
            if((oldR.get(i).Status__c == 'Draft') && (newR.get(i).Status__c == 'Completed')){
                completed.add(newR.get(i).Id);
            }
        }
    }
}