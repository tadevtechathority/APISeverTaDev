#import <Foundation/Foundation.h>
#import "Obfuscate.h"
#import "API/APIClient.h"

@interface Menu : NSObject
@end

@implementation Menu

+ (void)load {
  TKAPIKey *APIClient = [TKAPIKey sharedAPIClient];

[APIClient setPackageToken:@"6koz9fnxflrcgnpbhj7lwk8wr6qvv3r1kist384oimuyw=fdbu3g94qdaqm8cmh7nj40u0te/eoy95tycidp21v2hxa6j0slzsbp_7e1zag525x"]; 
[APIClient setPackageVersion:@"1.0"]; 
[APIClient setENLanguage:YES]; 


[APIClient paid:^{ 
	

    NSLog(@"APIData - Key: %@", [APIClient getKey]);
    NSLog(@"APIData - UDID: %@", [APIClient getUDID]);
    NSLog(@"APIData - Expiry date: %@", [APIClient getExpiryDate]);
    NSLog(@"APIData - Device model: %@", [APIClient getDeviceModel]);

}];
}


@end
