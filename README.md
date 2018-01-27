# Things to do
- Update bootstrap.sh to change add vagrant as owner of /usr/rvm after install chown user (folder-directory)

This graph is an attempt to design a database that can keep the history of assigned assets across different users as the assets are redistributed to other users.

> make sure to install mermaid to render the graph below

```mermaid
classDiagram
Asset <-- AssetType
Asset : int asset_id
Asset : string name

AssetType : string TypeName

AssetTypeOption --> AssetType
AssetTypeOption : string FieldName
AssetTypeOption : string FieldType

AssetOption --> AssetTypeOption
AssetOption --> Asset
AssetOption : int AssetID
AssetOption : int AssetTypeOptionID
AssetOption : string Value

User --> AssignedAsset
User : int ID
User : string FirstName
User : string LastName

AssignedAsset --> Asset
AssignedAsset : int AssetID
AssignedAsset : int UserID
AssignedAsset : bool isActive
AssignedAsset : datetime DateAssigned

AssignedAssetAsset --> AssignedAsset
AssignedAssetAsset --> Asset
AssignedAssetAsset : int AssetID
AssignedAssetAsset : int AssignedAssetID

```



