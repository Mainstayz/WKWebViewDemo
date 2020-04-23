//
//  WebViewController.m
//  WKWebViewDemo
//
//  Created by pillar on 2020/4/23.
//  Copyright © 2020 pillar. All rights reserved.
//

#import "WebViewController.h"
#import <dsBridge/dsbridge.h>
@interface WebViewController ()
@property (weak, nonatomic) IBOutlet DWKWebView *webView;

@end

@implementation WebViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.webView.clipsToBounds = NO;
    if (self.url.length) {
        [self.webView loadUrl:self.url];
    }
    // Do any additional setup after loading the view.
}
- (IBAction)refresh:(id)sender {
    [self.webView reload];
}
- (IBAction)goTo:(id)sender {
    UIAlertController *alertController=[UIAlertController alertControllerWithTitle:@"请输入URL" message:@"" preferredStyle:UIAlertControllerStyleAlert];
           [alertController addTextFieldWithConfigurationHandler:^(UITextField * _Nonnull textField) {
               textField.text = @"https://";
               
           }];
           UIAlertAction *action=[UIAlertAction actionWithTitle:@"ok" style:UIAlertActionStyleDestructive handler:^(UIAlertAction * _Nonnull action) {
               NSString *url =[alertController.textFields firstObject].text;
               [self.webView loadUrl:url];
            
           }];
           UIAlertAction *action_cancel=[UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
               [self dismissViewControllerAnimated:YES completion:nil];
           }];
           [alertController addAction:action];
           [alertController addAction:action_cancel];
           [self presentViewController:alertController animated:YES completion:nil];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
