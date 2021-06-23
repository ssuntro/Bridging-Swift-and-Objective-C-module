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
}


@end
