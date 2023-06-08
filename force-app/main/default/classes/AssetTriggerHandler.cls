public class AssetTriggerHandler {
        public static void AssetHandlerUpdate(List<Asset> newAssets, List<Asset> oldAssets, Map<Id, Asset> newAssetMap, Map<Id, Asset> oldAssetMap) {
            for (Asset eachAss : newAssets) {
                if (eachAss.Status == 'Shipped') {
                    eachAss.Description = 'Asset is shipped';
                } else if (eachAss.Status == 'Installed') {
                    eachAss.Description = 'Asset is Installed';
                }
            }
        }
    }
    
    
   
