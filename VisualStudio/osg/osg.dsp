# Microsoft Developer Studio Project File - Name="osg" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Dynamic-Link Library" 0x0102

CFG=osg - Win32 Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "osg.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "osg.mak" CFG="osg - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "osg - Win32 Release" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "osg - Win32 Debug" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""
# PROP Scc_LocalPath ""
CPP=cl.exe
MTL=midl.exe
RSC=rc.exe

!IF  "$(CFG)" == "osg - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "Release"
# PROP BASE Intermediate_Dir "Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "../../lib"
# PROP Intermediate_Dir "Release"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MT /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_MBCS" /D "_USRDLL" /D "LIBSCENEGRAPH_EXPORTS" /YX /FD /c
# ADD CPP /nologo /MD /W3 /GR /GX /O2 /I "../../include" /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_MBCS" /D "_USRDLL" /D "SG_LIBRARY" /YX /FD /c
# ADD BASE MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x409 /d "NDEBUG"
# ADD RSC /l 0x409 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /machine:I386
# ADD LINK32 opengl32.lib glu32.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /pdb:"../../bin/osg.pdb" /machine:I386 /out:"../../bin/osg.dll"
# SUBTRACT LINK32 /pdb:none

!ELSEIF  "$(CFG)" == "osg - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "Debug"
# PROP BASE Intermediate_Dir "Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "../../lib"
# PROP Intermediate_Dir "Debug"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MTd /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_MBCS" /D "_USRDLL" /D "LIBSCENEGRAPH_EXPORTS" /YX /FD /GZ /c
# ADD CPP /nologo /MDd /W3 /Gm /vmg /vd0 /GR /GX /ZI /Od /I "../../include" /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "SG_LIBRARY" /YX /FD /GZ /c
# ADD BASE MTL /nologo /D "_DEBUG" /mktyplib203 /win32
# ADD MTL /nologo /D "_DEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x409 /d "_DEBUG"
# ADD RSC /l 0x409 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /debug /machine:I386 /pdbtype:sept
# ADD LINK32 opengl32.lib glu32.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /pdb:"../../bin/osgd.pdb" /debug /machine:I386 /out:"../../bin/osgd.dll" /pdbtype:sept
# SUBTRACT LINK32 /pdb:none /incremental:no

!ENDIF 

# Begin Target

# Name "osg - Win32 Release"
# Name "osg - Win32 Debug"
# Begin Group "Source Files"

# PROP Default_Filter "cpp;c;cxx;rc;def;r;odl;idl;hpj;bat"
# Begin Source File

SOURCE=..\..\src\osg\AlphaFunc.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\osg\Billboard.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\osg\BoundingBox.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\osg\BoundingSphere.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\osg\Camera.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\osg\ClipPlane.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\osg\ColorMask.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\osg\CullFace.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\osg\Depth.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\osg\Drawable.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\osg\EarthSky.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\osg\Fog.cpp
# End Source File
# Begin Source File

SOURCE=..\..\Src\Osg\FrontFace.cpp
# End Source File
# Begin Source File

SOURCE=..\..\Src\Osg\FrameStamp.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\osg\Geode.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\osg\GeoSet.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\osg\GeoSet_ogl.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\osg\StateSet.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\osg\GLExtensions.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\osg\Group.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\osg\Image.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\osg\Impostor.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\osg\ImpostorSprite.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\osg\Light.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\osg\LightSource.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\osg\LineSegment.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\osg\LOD.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\osg\Material.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\osg\Matrix.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\osg\Node.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\osg\NodeVisitor.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\osg\Notify.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\osg\Object.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\osg\Point.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\osg\PolygonMode.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\osg\PolygonOffset.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\osg\Quat.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\osg\State.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\osg\Stencil.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\osg\Switch.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\osg\TexEnv.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\osg\TexGen.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\osg\TexMat.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\osg\Texture.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\osg\Timer.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\osg\Transform.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\osg\Transparency.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\osg\Version.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\osg\Viewport.cpp
# End Source File
# End Group
# Begin Group "Header Files"

# PROP Default_Filter ";h;hpp;hxx;hm;inl"
# Begin Source File

SOURCE=..\..\Include\Osg\AlphaFunc
# End Source File
# Begin Source File

SOURCE=..\..\Include\Osg\Billboard
# End Source File
# Begin Source File

SOURCE=..\..\Include\Osg\BoundingBox
# End Source File
# Begin Source File

SOURCE=..\..\Include\Osg\BoundingSphere
# End Source File
# Begin Source File

SOURCE=..\..\Include\Osg\Camera
# End Source File
# Begin Source File

SOURCE=..\..\Include\Osg\ClipPlane
# End Source File
# Begin Source File

SOURCE=..\..\Include\Osg\ClippingVolume
# End Source File
# Begin Source File

SOURCE=..\..\Include\Osg\ColorMask
# End Source File
# Begin Source File

SOURCE=..\..\Include\Osg\CullFace
# End Source File
# Begin Source File

SOURCE=..\..\Include\Osg\Depth
# End Source File
# Begin Source File

SOURCE=..\..\Include\Osg\Drawable
# End Source File
# Begin Source File

SOURCE=..\..\Include\Osg\EarthSky
# End Source File
# Begin Source File

SOURCE=..\..\Include\Osg\Export
# End Source File
# Begin Source File

SOURCE=..\..\Include\Osg\Fog
# End Source File
# Begin Source File

SOURCE=..\..\Include\Osg\FrontFace
# End Source File
# Begin Source File

SOURCE=..\..\Include\Osg\FrameStamp
# End Source File
# Begin Source File

SOURCE=..\..\Include\Osg\Geode
# End Source File
# Begin Source File

SOURCE=..\..\Include\Osg\GeoSet
# End Source File
# Begin Source File

SOURCE=..\..\Include\Osg\StateSet
# End Source File
# Begin Source File

SOURCE=..\..\Include\Osg\Stencil
# End Source File
# Begin Source File

SOURCE=..\..\Include\Osg\Gl
# End Source File
# Begin Source File

SOURCE=..\..\Include\Osg\GLExtensions
# End Source File
# Begin Source File

SOURCE=..\..\Include\Osg\Group
# End Source File
# Begin Source File

SOURCE=..\..\Include\Osg\Image
# End Source File
# Begin Source File

SOURCE=..\..\Include\Osg\Impostor
# End Source File
# Begin Source File

SOURCE=..\..\Include\Osg\ImpostorSprite
# End Source File
# Begin Source File

SOURCE=..\..\Include\Osg\Input
# End Source File
# Begin Source File

SOURCE=..\..\Include\Osg\Light
# End Source File
# Begin Source File

SOURCE=..\..\Include\Osg\LightSource
# End Source File
# Begin Source File

SOURCE=..\..\Include\Osg\LineSegment
# End Source File
# Begin Source File

SOURCE=..\..\Include\Osg\Lod
# End Source File
# Begin Source File

SOURCE=..\..\Include\Osg\Material
# End Source File
# Begin Source File

SOURCE=..\..\Include\Osg\Matrix
# End Source File
# Begin Source File

SOURCE=..\..\include\osg\mem_ptr
# End Source File
# Begin Source File

SOURCE=..\..\include\osg\MemoryAdapter
# End Source File
# Begin Source File

SOURCE=..\..\Include\Osg\Node
# End Source File
# Begin Source File

SOURCE=..\..\Include\Osg\NodeCallback
# End Source File
# Begin Source File

SOURCE=..\..\Include\Osg\NodeVisitor
# End Source File
# Begin Source File

SOURCE=..\..\Include\Osg\Notify
# End Source File
# Begin Source File

SOURCE=..\..\Include\Osg\Object
# End Source File
# Begin Source File

SOURCE=..\..\Include\Osg\Plane
# End Source File
# Begin Source File

SOURCE=..\..\Include\Osg\Point
# End Source File
# Begin Source File

SOURCE=..\..\Include\Osg\PolygonMode
# End Source File
# Begin Source File

SOURCE=..\..\Include\Osg\PolygonOffset
# End Source File
# Begin Source File

SOURCE=..\..\Include\Osg\Quat
# End Source File
# Begin Source File

SOURCE=..\..\include\osg\ref_ptr
# End Source File
# Begin Source File

SOURCE=..\..\Include\Osg\Referenced
# End Source File
# Begin Source File

SOURCE=..\..\Include\Osg\State
# End Source File
# Begin Source File

SOURCE=..\..\Include\Osg\StateAttribute
# End Source File
# Begin Source File

SOURCE=..\..\Include\Osg\Switch
# End Source File
# Begin Source File

SOURCE=..\..\Include\Osg\TexEnv
# End Source File
# Begin Source File

SOURCE=..\..\Include\Osg\TexGen
# End Source File
# Begin Source File

SOURCE=..\..\Include\Osg\TexMat
# End Source File
# Begin Source File

SOURCE=..\..\Include\Osg\Texture
# End Source File
# Begin Source File

SOURCE=..\..\Include\Osg\Timer
# End Source File
# Begin Source File

SOURCE=..\..\Include\Osg\Transform
# End Source File
# Begin Source File

SOURCE=..\..\Include\Osg\Transparency
# End Source File
# Begin Source File

SOURCE=..\..\Include\Osg\Types
# End Source File
# Begin Source File

SOURCE=..\..\Include\Osg\Vec2
# End Source File
# Begin Source File

SOURCE=..\..\Include\Osg\Vec3
# End Source File
# Begin Source File

SOURCE=..\..\Include\Osg\Vec4
# End Source File
# Begin Source File

SOURCE=..\..\Include\Osg\Version
# End Source File
# Begin Source File

SOURCE=..\..\Include\Osg\Viewport
# End Source File
# End Group
# Begin Group "Resource Files"

# PROP Default_Filter "ico;cur;bmp;dlg;rc2;rct;bin;rgs;gif;jpg;jpeg;jpe"
# End Group
# End Target
# End Project
