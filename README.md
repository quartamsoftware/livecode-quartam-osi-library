# livecode-quartam-osi-library

### Quartam Operating System Identifier Library for LiveCode

The source in script-only stack 'libqrtosi.livecodescript' is licensed under the GNU Lesser General Public License version 3 and you can make adaptations of this work

![LGPLv3 logo](https://upload.wikimedia.org/wikipedia/commons/thumb/3/3b/LGPLv3_Logo.svg/200px-LGPLv3_Logo.svg.png)

#### Features

 * Quckly identify the operating system
   * Android / iOS / macOS / Windows / Linux 
 * Identify the Android version by name
   * Android 2.2 'Froyo' through Android 8.0 'Oreo'
 * Identify the macOS version by name
   * MacOS X 10.2 'Jaguar' through macOS 10.13 'High Sierra'
 * Identify the Windows version by name
   * Windows 98 through Windows 10

#### Usage

##### Loading the script library

Add the library to the 'stackfiles' of your project's main stack.
Then load the library using the following command:

```livecode
start using stack "libqrtosi"
```

##### Identify the operating system from script

```livecode
if qrtOSI_IsAndroid() then
  -- do Android-specific things
else if qrtOSI_IsIOS() then
  -- do iOS-specific things
else if qrtOSI_IsMacOS() then
  -- do macOS-specific things
else if qrtOSI_IsWindows() then
  -- do Windows-specific things
else if qrtOSI_IsLinux() then
  -- do Linux-specific things
end if
```

##### Identify the operating system version by name

```livecode
if qrtOSI_IsOSXYosemiteOrLater() then
  -- apply UI design appropriate for macOS versions 10.10 Yosemite and later
  -- where Apple favours a flat appearance with blurred translucency effects
else if qrtOSI_IsMacOSXLeopardOrLater() then
  -- apply UI design appropriate for macOS versions 10.5 Leopard through 10.9 Mavericks
else if qrtOSI_IsMacOSXPantherOrLater() then
  -- apply UI design appropriate for macOS versions 10.3 Panther and 10.4 Tiger
  -- where Apple flaunted textured windows (remember those?)
end if
```

#### Converting for use in LiveCode versions older than 6.7

The file 'libqrtosi.livecodescript' is a so-called 'script-only stack' - which means you'll need to convert it to one of the 'legacy' formats to sue the library in older LiveCode versions.

 * Download LiveCode Community 6.7.11 from the [LiveCode Downloads](https://downloads.livecode.com/livecode/) page
 * Open the stack 'libqrtosi.livecodescript' in LiveCode Community 6.7.11
 * Save the stack as 'libqrtosi.livecode' in format 'Legacy LiveCode Stack (2.7)' if you want to use it in older versions 4.5.0 through 6.6.5
 * Or save the stack as 'libqrtosi.rev' in format 'Legacy LiveCode Stack (2.7)' if you want to use it in older versions 2.7.0 through 4.0.0
 * Or save the stack as 'libqrtosi.rev' in format 'Legacy LiveCode Stack (2.4)' if you want to use it in really old versions up to 2.6.1
