```
                        @@@@@@@@             @@@@@@@@@@@@           @@@@@@@@                        
                       @@@@@@@@@@             @@@@@@@@@@@@@        @@@@@@@@@@                       
                      @@@@@@@@@@@@             @@@@@@@@@@@@@      @@@@@@@@@@@@                      
                      @@@@@@@@@@@@@             @@@@@@@@@@@@@    @@@@@@@@@@@@@                      
                       @@@@@@@@@@@@@             @@@@@@@@@@@@@  @@@@@@@@@@@@@                       
                         @@@@@@@@@@@@             @@@@@@@@@@@@@@@@@@@@@@@@@                         
                          @@@@@@@@@@@@             @@@@@@@@@@@@@@@@@@@@@@@@                         
                           @@@@@@@@@@@@             @@@@@@@@@@@@@@@@@@@@@@                          
                @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@                            
              @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@             @@              
             @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@             @@@@             
            @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@             @@@@@@            
           @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@           @@@@@@@@           
          @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@         @@@@@@@@@@          
                                                            @@@@@@@@@@@@       @@@@@@@@@@@@         
                          @@@@@@@@@@@@@                      @@@@@@@@@@@@@    @@@@@@@@@@@@@         
                         @@@@@@@@@@@@@                        @@@@@@@@@@@@@  @@@@@@@@@@@@           
                        @@@@@@@@@@@@@                          @@@@@@@@@@@@ @@@@@@@@@@@@@           
                       @@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@            
                      @@@@@@@@@@@@@                              @@@@@@@@@@@@@@@@@@@@@              
   @@@@@@@@@@@@@@@   @@@@@@@@@@@@@                                @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   
 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@                                  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ 
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@                                    @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@                                      @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@                                    @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@                                  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ 
   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@                                @@@@@@@@@@@@@    @@@@@@@@@@@@@@   
              @@@@@@@@@@@@@@@@@@@@@                              @@@@@@@@@@@@@                      
             @@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@                       
           @@@@@@@@@@@@@ @@@@@@@@@@@@                          @@@@@@@@@@@@@                        
           @@@@@@@@@@@@  @@@@@@@@@@@@@                        @@@@@@@@@@@@@                         
         @@@@@@@@@@@@@    @@@@@@@@@@@@@                      @@@@@@@@@@@@@                          
         @@@@@@@@@@@@       @@@@@@@@@@@@                                                            
          @@@@@@@@@@         @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@          
           @@@@@@@@           @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@           
            @@@@@@             @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@            
             @@@@             @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@             
              @@             @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@              
                            @@@@@@@@@@@@@@@@@@              @@@@@@@@@@@@@                           
                           @@@@@@@@@@@@@@@@@@@@@             @@@@@@@@@@@@@                          
                          @@@@@@@@@@@@@@@@@@@@@@@             @@@@@@@@@@@@@                         
                         @@@@@@@@@@@@@@@@@@@@@@@@@             @@@@@@@@@@@@                         
                       @@@@@@@@@@@@@  @@@@@@@@@@@@@             @@@@@@@@@@@@@                       
                      @@@@@@@@@@@@@     @@@@@@@@@@@@             @@@@@@@@@@@@@                      
                      @@@@@@@@@@@@      @@@@@@@@@@@@@             @@@@@@@@@@@@                      
                       @@@@@@@@@@        @@@@@@@@@@@@@             @@@@@@@@@@                       
                        @@@@@@@@           @@@@@@@@@@@@             @@@@@@@@                        
```
# NixOS Configuration

Welcome to the NixOS Configuration repository! This repository contains my personal configuration file for setting up and managing my NixOS system.

## Features

- **Automated Setup**: Simplifies the process of configuring your NixOS system.
- **Customizable**: Easily modify the configuration to suit your needs.
- **Reliable**: Ensures a stable and consistent environment.
- **UEFI**: Offers support for UEFI only.
- **NVIDIA**: Includes the open-source Nvidia Drivers.

## Installation

Follow these steps to install the configuration from the CLI version of NixOS. This guide assumes you do not have `git` installed yet.

### Prerequisites

1. **Minimal NixOS Installer**: Ensure you have the minimal NixOS installer booted up. You can download it from the NixOS download page.
2. **Internet Connection**: Make sure you have an active internet connection.

### Steps

1. **Boot into the Minimal NixOS Installer**
   Boot your machine using the minimal NixOS installer ISO. You should be greeted with a shell prompt.

2. **Connect to the Internet**
   Ensure you have an active internet connection. You can use `nmtui` or `iwctl` for wireless connections.

   ```sh
   nmtui
   # or
   iwctl```
   
3. **Install Git**
    Since the minimal installer might not have `git` pre-installed, you can install it using the following command:
    
    ```sh
    nix-env -iA nixpkgs.git
    ```
    
4. **Clone the Repository**
    Clone this repository using `git`:
    
    ```sh
    git clone https://github.com/OpusNano/configuration.nix.git
    cd configuration.nix
    ```
    
5. **Apply the Configuration**
    Apply the configuration using `nixos-rebuild`:
    
    ```sh
    sudo nixos-rebuild switch -I nixos-config=./configuration.nix
    ```
    
6. **Reboot**
    Once the configuration is applied, reboot your system:
    
    ```sh
    reboot
    ```
