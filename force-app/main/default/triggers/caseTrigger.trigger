trigger caseTrigger on SOBJECT (before insert) {
caseTriggerHandler.createCaseoOrigin(trigger.new);
}