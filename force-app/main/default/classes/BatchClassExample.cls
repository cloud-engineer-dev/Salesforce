public with sharing class BatchClassExample implements Database.Batchable<sObject> {

    public BatchClassExample() {
    }

    public Database.QueryLocator start(Database.BatchableContext BC) {
        String query = '';
        System.debug('came here');
        System.debug('came here1');
        return Database.getQueryLocator(query);
    }

    public void execute(Database.BatchableContext BC, List<sObject> scope) {
    }

    public void finish(Database.BatchableContext BC) {
    }

}