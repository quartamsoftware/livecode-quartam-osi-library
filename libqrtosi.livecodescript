script "libqrtosi"
/*
Quartam Operating System Identifier Library for LiveCode [libqrtosi.livecodescript]
Copyright (C) 2004-2018 Quartam Software / Jan Schenkel

This program is free software; you can redistribute it and/or modify 
it under the terms of the GNU Lesser General Public License as 
published by the Free Software Foundation, either version 3 of the 
License, or (at your option) any later version, with the following
clarification and special exception.

 Linking this library statically or dynamically with other modules is
 making a combined work based on this library. Thus, the terms and 
 conditions of the GNU (Lesser) General Public License cover the whole
 combination.

 As a special exception, the copyright holders of this library give
 you permission to link this library with independent modules to produce 
 an executable, regardless of the license terms of these independent 
 modules, and to copy and distribute the resulting executable under 
 terms of your choice, provided that you also meet, for each linked 
 independent module, the terms and conditions of the license of that 
 module. An independent module is a module which is not derived from 
 or based on this library. If you modify this library, you may extend 
 this exception to your version of the library, but you are not 
 obligated to do so. If you do not wish to do so, delete this exception 
 statement from your version.

This program is distributed in the hope that it will be useful, 
but WITHOUT ANY WARRANTY; without even the implied warranty of 
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the 
GNU Lesser General Public License for more details.

You should have received a copy of the GNU Lesser General Public License 
along with this program.  If not, see <http://www.gnu.org/licenses>.
*/

--> script constants

constant kLibVersion = "1.0.0"
constant kLibErrorPrefix = "qrtosierr: "

--> script local variables

local sAndroidVersion
local sIOSVersion
local sMacOSVersion
local sWindowsVersion

--> engine message handlers

on libraryStack
   if the target is me then
      p_qrtOSI_InitLib
   end if
   pass libraryStack
end libraryStack

--> public commands and functions

function qrtOSI_Version
   return kLibVersion
end qrtOSI_Version

--- Android ---

function qrtOSI_IsAndroid
   return the platform is "android"
end qrtOSI_IsAndroid

function qrtOSI_IsAndroidFroyo
   return sAndroidVersion = 2.2
end qrtOSI_IsAndroidFroyo

function qrtOSI_IsAndroidGingerbread
   return sAndroidVersion = 2.3
end qrtOSI_IsAndroidGingerbread

function qrtOSI_IsAndroidGingerbreadOrLater
   return sAndroidVersion >= 2.3
end qrtOSI_IsAndroidGingerbreadOrLater

function qrtOSI_IsAndroidHoneycomb
   return sAndroidVersion >= 3.0 and sAndroidVersion < 4.0
end qrtOSI_IsAndroidHoneycomb

function qrtOSI_IsAndroidHoneycombOrLater
   return sAndroidVersion >= 3.0
end qrtOSI_IsAndroidHoneycombOrLater

function qrtOSI_IsAndroidIceCreamSandwich
   return sAndroidVersion >= 4.0 and sAndroidVersion < 4.4
end qrtOSI_IsAndroidIceCreamSandwich

function qrtOSI_IsAndroidIceCreamSandwichOrLater
   return sAndroidVersion >= 4.0
end qrtOSI_IsAndroidIceCreamSandwichOrLater

function qrtOSI_IsAndroidKitKat
   return sAndroidVersion = 4.4
end qrtOSI_IsAndroidKitKat

function qrtOSI_IsAndroidKitKatOrLater
   return sAndroidVersion >= 4.4
end qrtOSI_IsAndroidKitKatOrLater

function qrtOSI_IsAndroidLollipop
   return sAndroidVersion >= 5.0 and sAndroidVersion < 6.0
end qrtOSI_IsAndroidLollipop

function qrtOSI_IsAndroidLollipopOrLater
   return sAndroidVersion >= 5.0
end qrtOSI_IsAndroidLollipopOrLater

function qrtOSI_IsAndroidMarshmallow
   return sAndroidVersion >= 6.0 and sAndroidVersion < 7.0
end qrtOSI_IsAndroidMarshmallow

function qrtOSI_IsAndroidMarshmallowOrLater
   return sAndroidVersion >= 6.0
end qrtOSI_IsAndroidMarshmallowOrLater

function qrtOSI_IsAndroidNougat
   return sAndroidVersion >= 7.0 and sAndroidVersion < 8.0
end qrtOSI_IsAndroidNougat

function qrtOSI_IsAndroidNougatOrLater
   return sAndroidVersion >= 7.0
end qrtOSI_IsAndroidNougatOrLater

function qrtOSI_IsAndroidOreo
   return sAndroidVersion >= 8.0 and sAndroidVersion < 9.0
end qrtOSI_IsAndroidOreo

function qrtOSI_IsAndroidOreoOrLater
   return sAndroidVersion >= 8.0
end qrtOSI_IsAndroidOreoOrLater

--- iOS ---

function qrtOSI_IsIOS
   return the platform is "iphone"
end qrtOSI_IsIOS

function qrtOSI_IsIOS6
   return sIOSVersion >= 6.0 and sIOSVersion < 7.0
end qrtOSI_IsIOS6

function qrtOSI_IsIOS6OrLater
   return sIOSVersion >= 6.0
end qrtOSI_IsIOS6OrLater

function qrtOSI_IsIOS7
   return sIOSVersion >= 7.0 and sIOSVersion < 8.0
end qrtOSI_IsIOS7

function qrtOSI_IsIOS7OrLater
   return sIOSVersion >= 7.0
end qrtOSI_IsIOS7OrLater

function qrtOSI_IsIOS8
   return sIOSVersion >= 8.0 and sIOSVersion < 9.0
end qrtOSI_IsIOS8

function qrtOSI_IsIOS8OrLater
   return sIOSVersion >= 8.0
end qrtOSI_IsIOS8OrLater

function qrtOSI_IsIOS9
   return sIOSVersion >= 9.0 and sIOSVersion < 10.0
end qrtOSI_IsIOS9

function qrtOSI_IsIOS9OrLater
   return sIOSVersion >= 9.0
end qrtOSI_IsIOS9OrLater

function qrtOSI_IsIOS10
   return sIOSVersion >= 10.0 and sIOSVersion < 11.0
end qrtOSI_IsIOS10

function qrtOSI_IsIOS10OrLater
   return sIOSVersion >= 10.0
end qrtOSI_IsIOS10OrLater

function qrtOSI_IsIOS11
   return sIOSVersion >= 11.0 and sIOSVersion < 12.0
end qrtOSI_IsIOS11

function qrtOSI_IsIOS11OrLater
   return sIOSVersion >= 11.0
end qrtOSI_IsIOS11OrLater

--- MacOS / MacOS X / OS X ---

function qrtOSI_IsMacOS
   return the platform is "MacOS"
end qrtOSI_IsMacOS

function qrtOSI_IsMacOSClassic
   return the platform is "MacOS" and sMacOSVersion < 10
end qrtOSI_IsMacOSClassic

function qrtOSI_IsMacOSX
   return sMacOSVersion >= 10
end qrtOSI_IsMacOSX

function qrtOSI_IsOSX
   return sMacOSVersion >= 10
end qrtOSI_IsOSX

function qrtOSI_IsMacOSXJaguar
   return sMacOSVersion = 10.02
end qrtOSI_IsMacOSXJaguar

function qrtOSI_IsMacOSXJaguarOrLater
   return sMacOSVersion >= 10.02
end qrtOSI_IsMacOSXJaguarOrLater

function qrtOSI_IsMacOSXPanther
   return sMacOSVersion = 10.03
end qrtOSI_IsMacOSXPanther

function qrtOSI_IsMacOSXPantherOrLater
   return sMacOSVersion >= 10.03
end qrtOSI_IsMacOSXPantherOrLater

function qrtOSI_IsMacOSXTiger
   return sMacOSVersion = 10.04
end qrtOSI_IsMacOSXTiger

function qrtOSI_IsMacOSXTigerOrLater
   return sMacOSVersion >= 10.04
end qrtOSI_IsMacOSXTigerOrLater

function qrtOSI_IsMacOSXLeopard
   return sMacOSVersion = 10.05
end qrtOSI_IsMacOSXLeopard

function qrtOSI_IsMacOSXLeopardOrLater
   return sMacOSVersion >= 10.05
end qrtOSI_IsMacOSXLeopardOrLater

function qrtOSI_IsMacOSXSnowLeopard
   return sMacOSVersion = 10.06
end qrtOSI_IsMacOSXSnowLeopard

function qrtOSI_IsMacOSXSnowLeopardOrLater
   return sMacOSVersion >= 10.06
end qrtOSI_IsMacOSXSnowLeopardOrLater

function qrtOSI_IsMacOSXLion
   return sMacOSVersion = 10.07
end qrtOSI_IsMacOSXLion

function qrtOSI_IsMacOSXLionOrLater
   return sMacOSVersion >= 10.07
end qrtOSI_IsMacOSXLionOrLater

function qrtOSI_IsOSXMountainLion
   return sMacOSVersion = 10.08
end qrtOSI_IsOSXMountainLion

function qrtOSI_IsOSXMountainLionOrLater
   return sMacOSVersion >= 10.08
end qrtOSI_IsOSXMountainLionOrLater

function qrtOSI_IsOSXMavericks
   return sMacOSVersion = 10.09
end qrtOSI_IsOSXMavericks

function qrtOSI_IsOSXMavericksOrLater
   return sMacOSVersion >= 10.09
end qrtOSI_IsOSXMavericksOrLater

function qrtOSI_IsOSXYosemite
   return sMacOSVersion = 10.10
end qrtOSI_IsOSXYosemite

function qrtOSI_IsOSXYosemiteOrLater
   return sMacOSVersion >= 10.10
end qrtOSI_IsOSXYosemiteOrLater

function qrtOSI_IsOSXElCapitan
   return sMacOSVersion = 10.11
end qrtOSI_IsOSXElCapitan

function qrtOSI_IsOSXElCapitanOrLater
   return sMacOSVersion >= 10.11
end qrtOSI_IsOSXElCapitanOrLater

function qrtOSI_IsMacOSSierra
   return sMacOSVersion = 10.12
end qrtOSI_IsMacOSSierra

function qrtOSI_IsMacOSSierraOrLater
   return sMacOSVersion >= 10.12
end qrtOSI_IsMacOSSierraOrLater

function qrtOSI_IsMacOSHighSierra
   return sMacOSVersion = 10.13
end qrtOSI_IsMacOSHighSierra

function qrtOSI_IsMacOSHighSierraOrLater
   return sMacOSVersion >= 10.13
end qrtOSI_IsMacOSHighSierraOrLater

--- Windows ---

function qrtOSI_IsWindows
   return the platform is "Win32"
end qrtOSI_IsWindows

function qrtOSI_IsWindows98
   return sWindowsVersion = 4.1
end qrtOSI_IsWindows98

function qrtOSI_IsWindows98OrLater
   return sWindowsVersion >= 4.1
end qrtOSI_IsWindows98OrLater

function qrtOSI_IsWindowsME
   return sWindowsVersion = 4.9
end qrtOSI_IsWindowsME

function qrtOSI_IsWindowsMEOrLater
   return sWindowsVersion >= 4.9
end qrtOSI_IsWindowsMEOrLater

function qrtOSI_IsWindows2000
   return sWindowsVersion = 5.0
end qrtOSI_IsWindows2000
   
function qrtOSI_IsWindows2000OrLater
   return sWindowsVersion >= 5.0
end qrtOSI_IsWindows2000OrLater

function qrtOSI_IsWindowsXP
   return sWindowsVersion = 5.1
end qrtOSI_IsWindowsXP

function qrtOSI_IsWindowsXPOrLater
   return sWindowsVersion >= 5.1
end qrtOSI_IsWindowsXPOrLater

function qrtOSI_IsWindowsVista
   return sWindowsVersion = 6.0
end qrtOSI_IsWindowsVista

function qrtOSI_IsWindowsVistaOrLater
   return sWindowsVersion >= 6.0
end qrtOSI_IsWindowsVistaOrLater

function qrtOSI_IsWindows7
   return sWindowsVersion = 6.1
end qrtOSI_IsWindows7

function qrtOSI_IsWindows7OrLater
   return sWindowsVersion >= 6.1
end qrtOSI_IsWindows7OrLater

function qrtOSI_IsWindows8
   return sWindowsVersion = 6.2
end qrtOSI_IsWindows8

function qrtOSI_IsWindows8OrLater
   return sWindowsVersion >= 6.2
end qrtOSI_IsWindows8OrLater

function qrtOSI_IsWindows8Dot1
   return sWindowsVersion = 6.3
end qrtOSI_IsWindows8Dot1

function qrtOSI_IsWindows8Dot1OrLater
   return sWindowsVersion >= 6.3
end qrtOSI_IsWindows8Dot1OrLater

function qrtOSI_IsWindows10
   return sWindowsVersion = 10.0
end qrtOSI_IsWindows10

function qrtOSI_IsWindows10OrLater
   return sWindowsVersion >= 10.0
end qrtOSI_IsWindows10OrLater

function qrtOSI_WindowsProductName
   return p_qrtOSI_Windows_ProductName()
end qrtOSI_WindowsProductName

--- Linux ---

function qrtOSI_IsLinux
   return the platform is "Linux"
end qrtOSI_IsLinux

--> private commands and functions

private command p_qrtOSI_InitLib
   local tSystemVersion
   put the systemVersion into tSystemVersion
   set the itemDelimiter to "."
   switch the platform
      case "android"
         put item 1 to 2 of tSystemVersion into sAndroidVersion
         break
      case "iphone"
         put item 1 to 2 of tSystemVersion into sIOSVersion
         break
      case "MacOS"
         put format("%02d.%02d", item 1 of tSystemVersion, item 2 of tSystemVersion) into sMacOSVersion
         break
      case "Win32"
         put item 1 to 2 of (word -1 of tSystemVersion) into sWindowsVersion
         break
   end switch
end p_qrtOSI_InitLib

private function p_qrtOSI_Windows_ProductName
   local tProductName
   if sWindowsVersion is not empty then
      put queryRegistry("HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\ProductName") into tProductName
      local tCSDVersion
      put queryRegistry("HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\CSDVersion") into tCSDVersion
      if tCSDVersion is not empty then put space & tCSDVersion after tProductName
   end if
   return tProductName
end p_qrtOSI_Windows_ProductName
