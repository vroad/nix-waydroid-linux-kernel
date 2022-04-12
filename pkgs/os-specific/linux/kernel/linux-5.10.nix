{ linux_5_10, ... }:

linux_5_10.override (originalArgs: {
  kernelPatches = originalArgs.kernelPatches ++ [{
    name = "waydroid-config";
    patch = null;
    extraConfig = ''
      DRM_I915_LOW_LEVEL_TRACEPOINTS y
    '';
  }];
})
