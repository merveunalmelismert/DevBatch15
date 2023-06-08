trigger AssetTriggerAssingment on Asset (before insert, before update) {
    if (Trigger.isBefore && Trigger.isUpdate) {
        AssetTriggerHandler.AssetHandlerUpdate(trigger.new , trigger.old, trigger.newMap, trigger.oldMap )
    }
}