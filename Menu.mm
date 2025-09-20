#import <Foundation/Foundation.h>
#import "Obfuscate.h"
// File lấy dữ liệu Client
#import "API/APIClient.h"

@interface Menu : NSObject
@end

@implementation Menu

+ (void)load {
  TKAPIKey *APIClient = [TKAPIKey sharedAPIClient];

// Yêu cầu Set Đúng Token và Version trùng với server.
[APIClient setPackageToken:@"6koz9fnxflrcgnpbhj7lwk8wr6qvv3r1kist384oimuyw=fdbu3g94qdaqm8cmh7nj40u0te/eoy95tycidp21v2hxa6j0slzsbp_7e1zag525x"]; //Enter token from dashboard
[APIClient setPackageVersion:@"1.0"]; //Enter Version from dashboard
[APIClient setENLanguage:YES]; //Đổi ngôn ngữ: YES = Tiếng Anh, NO = Tiếng Việt

//paid nếu nhập đúng key sẽ chạy hàm này đồng nghĩa nếu bọc menu load vô đây đúng key sẽ hiện menu, sai thì sẽ không hiện.

[APIClient paid:^{ // để bọc menu

   //load menu
	// đặt hàm hiện menu.icon, load vào đây để khi nhập đúng key sẽ hiện 
	

   //Optional
    NSLog(@"APIData - Key: %@", [APIClient getKey]);
    NSLog(@"APIData - UDID: %@", [APIClient getUDID]);
    NSLog(@"APIData - Expiry date: %@", [APIClient getExpiryDate]);
    NSLog(@"APIData - Device model: %@", [APIClient getDeviceModel]);

}];
}


@end
