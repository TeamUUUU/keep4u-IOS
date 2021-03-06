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
#import <OpenAPIClient/OAIBoard.h>
#import <OpenAPIClient/OAIBoardUpdate.h>
#import <OpenAPIClient/OAIBoards.h>
#import <OpenAPIClient/OAIBody.h>
#import <OpenAPIClient/OAICollaborators.h>
#import <OpenAPIClient/OAIError.h>
#import <OpenAPIClient/OAINote.h>
#import <OpenAPIClient/OAINoteUpdate.h>
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
NSString* *authorization = @"authorization_example"; // Google ClientID token

OAIDefaultApi *apiInstance = [[OAIDefaultApi alloc] init];

// Delete attachment info by id
[apiInstance attachmentsAttachmentIdDeleteWithAttachmentId:attachmentId
    authorization:authorization
              completionHandler: ^(NSError* error) {
                            if (error) {
                                NSLog(@"Error: %@", error);
                            }
                        }];

```

## Documentation for API Endpoints

All URIs are relative to *http://188.246.233.13:8080*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*OAIDefaultApi* | [**attachmentsAttachmentIdDelete**](docs/OAIDefaultApi.md#attachmentsattachmentiddelete) | **DELETE** /attachments/{attachment_id} | Delete attachment info by id
*OAIDefaultApi* | [**attachmentsAttachmentIdGet**](docs/OAIDefaultApi.md#attachmentsattachmentidget) | **GET** /attachments/{attachment_id} | Get attachment info by id
*OAIDefaultApi* | [**attachmentsPost**](docs/OAIDefaultApi.md#attachmentspost) | **POST** /attachments | Upload attachment to server
*OAIDefaultApi* | [**boardsBoardIdCollaboratorsPatch**](docs/OAIDefaultApi.md#boardsboardidcollaboratorspatch) | **PATCH** /boards/{board_id}/collaborators | 
*OAIDefaultApi* | [**boardsBoardIdDelete**](docs/OAIDefaultApi.md#boardsboardiddelete) | **DELETE** /boards/{board_id} | Delete board by id
*OAIDefaultApi* | [**boardsBoardIdGet**](docs/OAIDefaultApi.md#boardsboardidget) | **GET** /boards/{board_id} | Get board by id
*OAIDefaultApi* | [**boardsBoardIdNotesGet**](docs/OAIDefaultApi.md#boardsboardidnotesget) | **GET** /boards/{board_id}/notes | Get notes for board
*OAIDefaultApi* | [**boardsBoardIdNotesPost**](docs/OAIDefaultApi.md#boardsboardidnotespost) | **POST** /boards/{board_id}/notes | Create new note on board
*OAIDefaultApi* | [**boardsBoardIdPatch**](docs/OAIDefaultApi.md#boardsboardidpatch) | **PATCH** /boards/{board_id} | Update board parameters
*OAIDefaultApi* | [**boardsGet**](docs/OAIDefaultApi.md#boardsget) | **GET** /boards | Get user boards
*OAIDefaultApi* | [**boardsPost**](docs/OAIDefaultApi.md#boardspost) | **POST** /boards | Create new board
*OAIDefaultApi* | [**notesNoteIdDelete**](docs/OAIDefaultApi.md#notesnoteiddelete) | **DELETE** /notes/{note_id} | Delete note by id
*OAIDefaultApi* | [**notesNoteIdGet**](docs/OAIDefaultApi.md#notesnoteidget) | **GET** /notes/{note_id} | Get note by id
*OAIDefaultApi* | [**notesNoteIdPatch**](docs/OAIDefaultApi.md#notesnoteidpatch) | **PATCH** /notes/{note_id} | Update note content
*OAIDefaultApi* | [**searchNotesGet**](docs/OAIDefaultApi.md#searchnotesget) | **GET** /search/notes | Search notes by related text


## Documentation For Models

 - [OAIAttachment](docs/OAIAttachment.md)
 - [OAIAttachments](docs/OAIAttachments.md)
 - [OAIBoard](docs/OAIBoard.md)
 - [OAIBoardUpdate](docs/OAIBoardUpdate.md)
 - [OAIBoards](docs/OAIBoards.md)
 - [OAIBody](docs/OAIBody.md)
 - [OAICollaborators](docs/OAICollaborators.md)
 - [OAIError](docs/OAIError.md)
 - [OAINote](docs/OAINote.md)
 - [OAINoteUpdate](docs/OAINoteUpdate.md)
 - [OAINotes](docs/OAINotes.md)


## Documentation For Authorization

 All endpoints do not require authorization.


## Author




