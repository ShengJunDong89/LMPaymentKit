//
//  PKResourceLoader.m
//  Pods
//
//  Created by Sheng Dong on 3/19/15.
//
//

#import "PKResourceLoader.h"

@implementation PKResourceLoader

+ (UIImage *)imageWithName:(NSString *)name {
    UIImage *imageFromMainBundle = [UIImage imageNamed:name];
    if (imageFromMainBundle) {
        return imageFromMainBundle;
    }
    
    UIImage *imageFromPKResourceBundle = [UIImage imageNamed:name inBundle:[self paymentKitResourcesBundle] compatibleWithTraitCollection:nil];
    return imageFromPKResourceBundle;
}

+ (NSBundle*)paymentKitResourcesBundle {
    static dispatch_once_t onceToken;
    static NSBundle *pkResourcesBundle = nil;
    dispatch_once(&onceToken, ^{
        pkResourcesBundle = [NSBundle bundleWithURL:[[NSBundle bundleForClass:[self class]] URLForResource:@"PaymentKitResources" withExtension:@"bundle"]];
    });
    return pkResourcesBundle;
}
@end
