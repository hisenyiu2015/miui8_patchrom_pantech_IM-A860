import common
import edify_generator

def RemoveDeviceAssert(info):
  edify = info.script
  for i in xrange(len(edify.script)):
    if "ro.product" in edify.script[i]:
      edify.script[i] = ''
      return

def AddAssertions(info):
    edify = info.script
    for i in xrange(len(edify.script)):
        if " ||" in edify.script[i] and ("ro.product.device" in edify.script[i] or "ro.build.product" in edify.script[i]):
            edify.script[i] = edify.script[i].replace(" ||", ' || getprop("ro.product.device") == "860" || getprop("ro.build.product") == "860" || getprop("ro.product.device") == "ef51l" || getprop("ro.build.product") == "ef51l" || getprop("ro.product.device") == "IM-A860L" || getprop("ro.build.product") == "IM-A860L" || getprop("ro.product.device") == "A860L" || getprop("ro.build.product") == "A860L" || getprop("ro.product.device") == "ef51k" || getprop("ro.build.product") == "ef51k" || getprop("ro.product.device") == "ef51s" || getprop("ro.build.product") == "ef51s" || getprop("ro.product.device") == "IM-A860K" || getprop("ro.build.product") == "IM-A860K" || getprop("ro.product.device") == "IM-A860S" || getprop("ro.build.product") == "IM-A860S" || getprop("ro.product.device") == "A860" || getprop("ro.build.product") == "A860" || getprop("ro.product.device") == "IM-A860" || getprop("ro.build.product") == "IM-A860" || getprop("ro.product.device") == "a860" || getprop("ro.build.product") == "a860" || getprop("ro.product.device") == "VEGA NO.6 " || getprop("ro.build.product") == "VEGA NO.6 " ||')
            return


def AddArgsForFormatSystem(info):
  edify = info.script
  for i in xrange(len(edify.script)):
    if "format(" in edify.script[i] and "/dev/block/platform/msm_sdcc.1/by-name/system" in edify.script[i]:
      edify.script[i] = 'format("ext4", "EMMC", "/dev/block/platform/msm_sdcc.1/by-name/system", "0", "/system");'
      return

def WritePolicyConfig(info):
  try:
    file_contexts = info.input_zip.read("META/file_contexts")
    common.ZipWriteStr(info.output_zip, "file_contexts", file_contexts)
  except KeyError:
    print "warning: file_context missing from target;"

def FullOTA_InstallEnd(info):
    AddAssertions(info)
    WritePolicyConfig(info)
def IncrementalOTA_InstallEnd(info):
    AddAssertions(info)
