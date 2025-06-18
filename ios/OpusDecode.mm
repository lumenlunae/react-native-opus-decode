#import "OpusDecode.h"
#import "decoder.h"

@implementation OpusDecode

RCT_EXPORT_MODULE()

- (void)decodeFromUri:(nonnull NSString *)sourcePath destPath:(nonnull NSString *)destPath resolve:(nonnull RCTPromiseResolveBlock)resolve reject:(nonnull RCTPromiseRejectBlock)reject {
  const char *fileNameIn = [sourcePath UTF8String];
  char *filenameOut = (char*)[destPath UTF8String];
  decodeOpus(fileNameIn, filenameOut);
  resolve(destPath);
}


- (std::shared_ptr<facebook::react::TurboModule>)getTurboModule:
    (const facebook::react::ObjCTurboModule::InitParams &)params
{
    return std::make_shared<facebook::react::NativeOpusDecodeSpecJSI>(params);
}


@end
