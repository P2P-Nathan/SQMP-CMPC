## Managing the GitHub Managment Pack Index

*The list of Management Packs available through the Community Managment Pack Catalog is managed via a GitHub index file.  The below documentation and steps cover best practices to get the most out of the Community Catalog with the least effort.*

#### Overview
When the Community Management Pack Catalog view is loaded in the SCOM console the first operation is to pull the catalog index file via HTTP GET.  This file is used for the following functions.
- Indicates the list of packs that are *Active* and should be loaded
- Provides the specific URL to the Management Pack Detail JSON
- Serves as an easy to read and modify list of what packs the catalog holds


#### Index JSON structure
```json
{ 
    "ManagementPackName":"SQMP.Community.ManagementPackCatalog",
    "ManagementPackDetailLocation":"http://GitHub.Com/MyManagmentPack/PackDetails.Json",
    "Active":"true"
}
```

#### Property Descriptions

###### ManagementPackName
This value must be unique within the index and should describe the pack.  Using the Management Packs System Name would be a good choice, unless there is a specific reason that it will not work.

###### ManagementPackDetailLocation
A fully qualified URL to the JSON file that provideds the detailed information on the Management Pack.  See the [GitHub Management Pack Detail Entry](http://github.com) documentation for more information on this file.

###### Active (Optional)
This property is optional and will default to true if no value is provided.  If set to false the UI will ignore this entry in the Management Pack Catalog.
