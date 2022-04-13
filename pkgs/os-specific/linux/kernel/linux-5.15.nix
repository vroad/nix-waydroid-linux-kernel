{ linux_5_15, linuxPackagesFor, lib, ... }:

linux_5_15.override {
  structuredExtraConfig = with lib.kernel; {
    EXPERT  = yes;
    DRM_I915_LOW_LEVEL_TRACEPOINTS = yes;
  };
}
