# OpenAPIClient

keep4u backend rest api

This ObjC package is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: 0.0.1
- Package version: 
- Build package: org.openapitools.codegen.languages.ObjcClientCodegen

## Requirements

The SDK requires [**ARC (Automatic Reference Counting)**](http://stackoverflow.com/questions/7778356/how-to-enable-disable-automatic-reference-counting) to be enabled in the Xcode project.

## Installation & Usage
### Install from Github using [CocoaPods](https://cocoapods.org/)

Add the following to the Podfile:

```ruby
pod 'OpenAPIClient', :git => 'https://github.com/GIT_USER_ID/GIT_REPO_ID.git'
```

To specify a particular branch, append `, :branch => 'branch-name-here'`

To specify a particular commit, append `, :commit => '11aa22'`

### Install from local path using [CocoaPods](https://cocoapods.org/)

Put the SDK under your project folder (e.g. /path/to/objc_project/Vendor/OpenAPIClient) and then add the following to the Podfile:

```ruby
pod 'OpenAPIClient', :path => 'Vendor/OpenAPIClient'
```

### Usage

Import the following:

```objc
#import <OpenAPIClient/OAIApiClient.h>
#import <OpenAPIClient/OAIDefaultConfiguration.h>
// load models
#import <OpenAPIClient/OAIAttachment.h>
#import <OpenAPIClient/OAIAttachments.h>
#import <OpenAPIClient/OAIBody.h>
#import <OpenAPIClient/OAIDock.h>
#import <OpenAPIClient/OAIDocks.h>
#import <OpenAPIClient/OAIError.h>
#import <OpenAPIClient/OAINote.h>
#import <OpenAPIClient/OAINotes.h>
// load API classes for accessing endpoints
#import <OpenAPIClient/OAIDefaultApi.h>

```

## Recommendation

It's recommended to create an instance of ApiClient per thread in a multi-threaded environment to avoid any potential issues.

## Getting Started

Please follow the [installation procedure](#installation--usage) and then run the following:

```objc


NSString* *attachmentId = @"attachmentId_example"; // UUID of attachment

OAIDefaultApi *apiInstance = [[OAIDefaultApi alloc] init];

// Delete attachment info by id
[apiInstance attachmentsAttachmentIdDeleteWithAttachmentId:attachmentId
              completionHandler: ^(NSError* error) {
                            if (error) {
                                NSLog(@"Error: %@", error);
                            }
                        }];

```

## Documentation for API Endpoints

All URIs are relative to *http://localhost*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*OAIDefaultApi* | [**attachmentsAttachmentIdDelete**](docs/OAIDefaultApi.md#attachmentsattachmentiddelete) | **DELETE** /attachments/{attachment_id} | Delete attachment info by id
*OAIDefaultApi* | [**attachmentsAttachmentIdGet**](docs/OAIDefaultApi.md#attachmentsattachmentidget) | **GET** /attachments/{attachment_id} | Get attachment info by id
*OAIDefaultApi* | [**attachmentsPost**](docs/OAIDefaultApi.md#attachmentspost) | **POST** /attachments | Upload attachment to server
*OAIDefaultApi* | [**docksDockIdDelete**](docs/OAIDefaultApi.md#docksdockiddelete) | **DELETE** /docks/{dock_id} | Delete dock by id
*OAIDefaultApi* | [**docksDockIdGet**](docs/OAIDefaultApi.md#docksdockidget) | **GET** /docks/{dock_id} | Get dock by id
*OAIDefaultApi* | [**docksDockIdNotesGet**](docs/OAIDefaultApi.md#docksdockidnotesget) | **GET** /docks/{dock_id}/notes | Get notes for dock
*OAIDefaultApi* | [**docksDockIdNotesPost**](docs/OAIDefaultApi.md#docksdockidnotespost) | **POST** /docks/{dock_id}/notes | Create new note on dock
*OAIDefaultApi* | [**docksDockIdPut**](docs/OAIDefaultApi.md#docksdockidput) | **PUT** /docks/{dock_id} | Replace dock
*OAIDefaultApi* | [**docksGet**](docs/OAIDefaultApi.md#docksget) | **GET** /docks | Get user docks
*OAIDefaultApi* | [**docksPost**](docs/OAIDefaultApi.md#dockspost) | **POST** /docks | Create new dock
*OAIDefaultApi* | [**notesNoteIdDelete**](docs/OAIDefaultApi.md#notesnoteiddelete) | **DELETE** /notes/{note_id} | Delete dock by id
*OAIDefaultApi* | [**notesNoteIdGet**](docs/OAIDefaultApi.md#notesnoteidget) | **GET** /notes/{note_id} | Get note by id
*OAIDefaultApi* | [**notesNoteIdPatch**](docs/OAIDefaultApi.md#notesnoteidpatch) | **PATCH** /notes/{note_id} | Update note content


## Documentation For Models

 - [OAIAttachment](docs/OAIAttachment.md)
 - [OAIAttachments](docs/OAIAttachments.md)
 - [OAIBody](docs/OAIBody.md)
 - [OAIDock](docs/OAIDock.md)
 - [OAIDocks](docs/OAIDocks.md)
 - [OAIError](docs/OAIError.md)
 - [OAINote](docs/OAINote.md)
 - [OAINotes](docs/OAINotes.md)


## Documentation For Authorization

 All endpoints do not require authorization.


## Author



