
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <substrate.h>

// 1. اعتراض النصوص في القوائم والعناوين (Labels)
%hook UILabel
- (void)setText:(NSString *)text {
    if ([text isEqualToString:@"开始使用"]) {
        %orig(@"بدء الاستخدام");
    } else if ([text isEqualToString:@"定位修改"]) {
        %orig(@"تغيير الموقع");
    } else if ([text isEqualToString:@"设置"]) {
        %orig(@"الإعدادات");
    } else {
        %orig(text);
    }
}
%end

// 2. اعتراض النصوص داخل الأزرار (Buttons)
%hook UIButton
- (void)setTitle:(NSString *)title forState:(UIControlState)state {
    if ([title isEqualToString:@"确定"]) {
        %orig(@"موافق", state);
    } else if ([title isEqualToString:@"取消"]) {
        %orig(@"إلغاء", state);
    } else {
        %orig(title, state);
    }
}
%end
