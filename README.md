# Chocolatey Packages
  Self used [Chocolatey](https://chocolatey.org/) packages
## Purpose
   This repository is mainly for packaging applications that I use and not found in [Chocolatey Community Repository](https://community.chocolatey.org/packages) and used as **local** repository.

   The main focus is to package **portable** applications since the policy in my company is not to use administrator in company's computer, while I still find some applications useful for my workflow.
   It is also easier to try new applications with portable version without impacting the registry.

   The packages may be uploaded to Chocolatey Community Repository someday.

## Usage
   The following assumes **Chocolatey** is installed.

   - Clone the repository to local machine
     ```
     git clone https://github.com/flotisable/ChocolateyPacakges
     ```

   - Add the `Packages` directory as local repository to Chocolatey
     ```
     choco source add --name=<repo name> --source=<absolute path to the Packages directory>
     ```
     e.g.
     ```
     choco source add --name=local --source=~/Applications/ChocolateyPackages/Packages
     ```

## Packages
   - [glazewm](https://github.com/lars-berger/GlazeWM): [i3wm](https://i3wm.org/) like [tiling window manager](https://en.wikipedia.org/wiki/Tiling_window_manager) for Windows (there is [installed version](https://community.chocolatey.org/packages/glazewm) in chocolatey community repository now)
   - [efm-langserver](https://github.com/mattn/efm-langserver): General purpose Language Server 

## Author
   Flotisable <s09930698@gmail.com>
