public with sharing class BatchClassExample implements Database.Batchable<sObject> {

    public BatchClassExample() {
    }

    public Database.QueryLocator start(Database.BatchableContext BC) {
        // Sample comment to check
        String query = 'SELECT Id From Account LIMIT 10';
        System.debug('Came here');
        System.debug('Came here');
        return Database.getQueryLocator(query);
    }

    public void execute(Database.BatchableContext BC, List<sObject> scope) {
    }

    public void finish(Database.BatchableContext BC) {
    }

}