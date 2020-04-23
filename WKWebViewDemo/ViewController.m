//
//  ViewController.m
//  WKWebViewDemo
//
//  Created by pillar on 2020/4/23.
//  Copyright © 2020 pillar. All rights reserved.
//

#import "ViewController.h"
#import "WebViewController.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextView *textView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    WebViewController *des = [segue destinationViewController];
    des.url = [self.textView.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    
}

@end
