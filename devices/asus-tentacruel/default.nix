{ config, lib, pkgs, ... }:

{
  imports = [
    ../families/mainline-chromeos-mt8183
  ];

  mobile.device.name = "asus-tentacruel";
  mobile.device.identity = {
    name = "";
    manufacturer = "Asus";
  };
  mobile.device.supportLevel = "best-effort";
  mobile.hardware = {
    screen = {
      width = 1920; height = 1080;
    };
  };
  mobile.boot.stage-1 = {
    kernel.package = pkgs.callPackage ./kernel { };
  };
}
