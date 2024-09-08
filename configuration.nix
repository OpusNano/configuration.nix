{ config, lib, pkgs, ... }:

{
  # Import hardware configuration
  imports = [ ./hardware-configuration.nix ];

  # Bootloader settings
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  # Network settings
  networking.hostName = "skynet";
  networking.networkmanager.enable = true;

  # Timezone
  time.timeZone = "Europe/Berlin";

  # User configuration
  users.users.opus = {
    isNormalUser = true;
    extraGroups = [ "wheel" "networkmanager" ];
  };

  # Enable Hyprland and XWayland
  programs.hyprland = {
    enable = true;
    xwayland.enable = true;
  };

  # Enable D-Bus and XDG portals
  services.dbus.enable = true;
  xdg.portal = {
    enable = true;
    wlr.enable = true;
    extraPortals = [ pkgs.xdg-desktop-portal-gtk ];
  };

  # Session variables for Wayland
  environment.sessionVariables = {
    NIXOS_OZONE_WL = "1";
  };

  # Enable X server and SDDM display manager
  services.xserver.enable = true;
  services.displayManager.sddm.enable = true;
  services.displayManager.sddm.wayland.enable = true;

  # Enable unfree packages (needed for proprietary software)
  nixpkgs.config.allowUnfree = true;

  # Add open-source NVIDIA drivers
  hardware.opengl = {
    enable = true;
    driSupport = true;
    driSupport32Bit = true;
  };

  hardware.nvidia = {
    modesetting.enable = true;
    package = config.boot.kernelPackages.nvidiaPackages.open;
  };

  # System packages
  environment.systemPackages = with pkgs; [
    polkit
    xdg-desktop-portal-hyprland
    xdg-desktop-portal-gtk
    hyprland
    kitty
    fira-code
    firefox
    xwayland
    mesa
    libglvnd
    vulkan-loader
  ];

  # OpenSSH service
  services.openssh = {
    enable = true;
    ports = [ 22 ];
    settings = {
      PasswordAuthentication = true;
      AllowUsers = null;
      PermitRootLogin = "yes";
    };
  };

  # System state version
  system.stateVersion = "24.05";
}
