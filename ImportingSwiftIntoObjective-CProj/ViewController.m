//
//  ViewController.m
//  ImportingSwiftIntoObjective-CProj
//
//  Created by Siroratt Suntronsuk on 23/6/2564 BE.
//

#import "ViewController.h"
#import "ImportingSwiftIntoObjective_CProj-Swift.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    Human *a = [[Human alloc] init];
    printf("Annja: %@", a.age);
    
    Animator * b = [[Animator alloc] init];
    [b exeWith: self.view];
    [self crashButton];
}
- (void)crashButton {
    UIButton* button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.frame = CGRectMake(20, 50, 100, 30);
    [button setTitle:@"Test Crash" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(crashButtonTapped:)
        forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

-(IBAction)crashButtonTapped:(id)sender {
    @[][1];
}
//MARK: - Before Network calling
//[[FIRCrashlytics crashlytics] setCustomValue: @"pnr" forKey: reservationNumber];
//[[FIRCrashlytics crashlytics] setCustomValue: @"pnr" forKey: bookingSummary.reservationNumber];


//MARK: - After Network calling
//-(void)logNetworkError:(NSString*)responseBody {
//    NSString* domain = [[NSString alloc] initWithFormat: @"Network error: %ld, %@", (long)self.httpResponseStatusCode, _urlRequest.URL.description];
//
//    [[FIRCrashlytics crashlytics] logWithFormat: @"method: %@", _urlRequest.HTTPMethod];
//    [[FIRCrashlytics crashlytics] logWithFormat: @"requestBody: %@", (_urlRequest.allHTTPHeaderFields==Nil? @"":_urlRequest.allHTTPHeaderFields)];
//    [[FIRCrashlytics crashlytics] logWithFormat: @"responseJson: %@", responseBody];
//    [[FIRCrashlytics crashlytics] logWithFormat: @"responseLocalizedDescription: %ld", (long)self.httpResponseStatusCode];
//    [[FIRCrashlytics crashlytics] logWithFormat: @"responseErrorFailingURLKey: %@", _urlRequest.URL.description];
//
//
//    NSError *errorForLog = [[NSError alloc] initWithDomain:domain
//                                                   code: (long)self.httpResponseStatusCode
//                                               userInfo:
//                         @{_urlRequest.URL.description: @"url"
//                         }];
//    [[FIRCrashlytics crashlytics] recordError: errorForLog];
//}

//-(void)logNetworkError:(NSString*)responseBody  responseDescription:(NSString*)responseDescription responseUrlKey: (NSString*)responseUrlKey {
//    NSString* domain = [[NSString alloc] initWithFormat: @"Network error: %ld, %@", (long)self.metric.responseCode, [self urlString]];
//
//    [[FIRCrashlytics crashlytics] logWithFormat: @"method: %@", [self httpRequestMethod]];
//    [[FIRCrashlytics crashlytics] logWithFormat: @"requestBody: %@", ([self parameters]==Nil? @"": [self parameters])];
//    [[FIRCrashlytics crashlytics] logWithFormat: @"responseJson: %@", responseBody];
//    [[FIRCrashlytics crashlytics] logWithFormat: @"responseLocalizedDescription: %@", responseDescription];
//    [[FIRCrashlytics crashlytics] logWithFormat: @"responseErrorFailingURLKey: %@", responseUrlKey];
//
//
//    NSError *errorForLog = [[NSError alloc] initWithDomain:domain
//                                                   code: self.metric.responseCode
//                                               userInfo:
//                         @{[self urlString]: @"url"
//                         }];
//    [[FIRCrashlytics crashlytics] recordError: errorForLog];
//}

//-(void)logSuccessCase:(NSString*)urlString
//    httpRequestMethod:(NSString*) httpRequestMethod
//           parameters:(NSDictionary*) parameters {
//
//    if(urlString == nil) { return; }
//    NSString* domain = [[NSString alloc] initWithFormat: @"Network success: 200, %@", urlString];
//    [[FIRCrashlytics crashlytics] logWithFormat: @"method: %@", httpRequestMethod];
//    [[FIRCrashlytics crashlytics] logWithFormat: @"requestBody: %@", (parameters==Nil? @"": parameters)];
//    NSError *noError = [[NSError alloc] initWithDomain: domain
//                                                   code: 200
//                                               userInfo: @{urlString: @"url"
//                                                         }];
//    [[FIRCrashlytics crashlytics] recordError: noError];
//}

//-(void)logSuccessCase:(NSString*)urlString
//    httpRequestMethod:(NSString*) httpRequestMethod
//           parameters:(NSDictionary*) parameters {
//
//    if(urlString == nil) { return; }
//    NSString* domain = [[NSString alloc] initWithFormat: @"Network success: 200, %@", urlString];
//    [[FIRCrashlytics crashlytics] logWithFormat: @"method: %@", httpRequestMethod];
//    [[FIRCrashlytics crashlytics] logWithFormat: @"requestBody: %@", (parameters==Nil? @"": parameters)];
//    NSError *noError = [[NSError alloc] initWithDomain: domain
//                                                   code: 200
//                                               userInfo: @{urlString: @"url"
//                                                         }];
//    [[FIRCrashlytics crashlytics] recordError: noError];
//}

//-(void)logSuccessCase:(NSString*)urlString {
//
//    NSString* domain = [[NSString alloc] initWithFormat: @"Network success: 200, %@", urlString];
//    [[FIRCrashlytics crashlytics] logWithFormat: @"method: GET"];
//    NSError *noError = [[NSError alloc] initWithDomain: domain
//                                                   code: 200
//                                               userInfo: @{urlString: @"url"}];
//    [[FIRCrashlytics crashlytics] recordError: noError];
//}
@end
