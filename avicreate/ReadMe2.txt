AniToolProjekt Component
=================================

Creates silent AVIs for the TAnimationSymbol component

Version 0.9 (not really an Application, just a Helper)

Usage:

 - add bitmaps OF THE SAME SIZE (very little error checking in this version)
 - click "Create AVI": creates AVI file
 - optional: check the AVI file by double-clicking it from the Explorer

Tech Notes:

 - since there is no vfw.pas I created one from vfw.h (currently only includes
   stuff necessary to create avi files)

 - since the DIB functions from Graphics.pas are not exported, they are reproduced
   in DIBitmap (I needed the versions that let me pass the number of colors I want)

Legal stuff:

 - Provided as is. Due to lack of error checking to be used with care...
 - This app is Freeware (I retain the copyright)
 - not to be distributed for profit without my permission

Source Code:

 - Included. e-mail me if You like the component or if You have questions.
 - If You make major improvements, especially to the interface, please repost it.

Credits:

 - This is mainly a port of Mark Gamber's CAVI example

Me:

 Thomas Schimming
 (schimmin@iee1.et.tu-dresden.de)
 (www_iee.et.tu-dresden.de:8080/~schimmin/) ... just some links

 Feel free to e-mail me any questions...
