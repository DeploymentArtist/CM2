$Source = 'D:\Sources'

#Source Directory
New-Item -ItemType Directory -Path "$Source"
#software folders
New-Item -ItemType Directory -Path "$Source\Software"
New-Item -ItemType Directory -Path "$Source\Software\Adobe"
New-Item -ItemType Directory -Path "$Source\Software\Other"
New-Item -ItemType Directory -Path "$Source\Software\Microsoft"

#OSD folders
New-Item -ItemType Directory -Path "$Source\OSD"
New-Item -ItemType Directory -Path "$Source\OSD\Images"
New-Item -ItemType Directory -Path "$Source\OSD\OSInstall"
New-Item -ItemType Directory -Path "$Source\OSD\BootImages"
New-Item -ItemType Directory -Path "$Source\OSD\DriverPackages"
New-Item -ItemType Directory -Path "$Source\OSD\DriverPackages\Win7x64\HP"
New-Item -ItemType Directory -Path "$Source\OSD\DriverPackages\Win7x64\Lenovo"
New-Item -ItemType Directory -Path "$Source\OSD\DriverPackages\Win8x64"
New-Item -ItemType Directory -Path "$Source\OSD\DriverPackages\Win8x64\HP"
New-Item -ItemType Directory -Path "$Source\OSD\DriverPackages\Win8x64\Lenovo"
New-Item -ItemType Directory -Path "$Source\OSD\DriverSources"
New-Item -ItemType Directory -Path "$Source\OSD\DriverSources\Win7x86\HP"
New-Item -ItemType Directory -Path "$Source\OSD\DriverSources\Win7x86\Lenovo"
New-Item -ItemType Directory -Path "$Source\OSD\DriverSources\Win7x64"
New-Item -ItemType Directory -Path "$Source\OSD\DriverSources\Win7x64\HP"
New-Item -ItemType Directory -Path "$Source\OSD\DriverSources\Win7x64\Lenovo"
New-Item -ItemType Directory -Path "$Source\OSD\DriverSources\Win8x64"
New-Item -ItemType Directory -Path "$Source\OSD\DriverSources\Win8x64\HP"
New-Item -ItemType Directory -Path "$Source\OSD\DriverSources\Win8x64\Lenovo"
New-Item -ItemType Directory -Path "$Source\OSD\SW"
New-Item -ItemType Directory -Path "$Source\OSD\SW\Settings"
New-Item -ItemType Directory -Path "$Source\OSD\SW\Toolkit"
New-Item -ItemType Directory -Path "$Source\OSD\SW\USMT"
New-Item -ItemType Directory -Path "$Source\OSD\Prestart"
New-Item -ItemType Directory -Path "$Source\OSD\Logs"

#Software Update folders
New-Item -ItemType Directory -Path "$Source\Updates"
New-Item -ItemType Directory -Path "$Source\Updates\2013-1"
New-Item -ItemType Directory -Path "$Source\Updates\2013-2"
New-Item -ItemType Directory -Path "$Source\Updates\Definitions"