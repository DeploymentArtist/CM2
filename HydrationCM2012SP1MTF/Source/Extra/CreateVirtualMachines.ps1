<#
Solution: Hydration
Version: 1.0 - May 11, 2013

This script is provided "AS IS" with no warranties, confers no rights and 
is not supported by the authors or Deployment Artist. 

Author - Johan Arwidmark
    Twitter: @jarwidmark
    Blog   : http://deploymentresearch.com
#>

$VMLocation = "C:\VMs"
$VMISO = "C:\HydrationCM2012SP1MTF\ISO\HydrationCM2012SP1MTF.iso"
$VMNetwork = "Internal"

# Verify that VMNetwork exists
$VerifyVMNetwork = Get-VMSwitch | Where-Object -Property Name -EQ $VMNetwork
if ($VerifyVMNetwork.Name -eq $VMNetwork)
        {
        Write-host "The VMNetwork:" $VMNetwork "exist"
        }
else
        {
        Write-host "The VMNetwork:" $VMNetwork "does not exist, aborting"
        exit
        }


# Create DC01
$VMName = "BOOK-CM2012SP1MTF-DC01"
$VMMemory = 1024MB
$VMDiskSize = 60GB
New-VM -Name $VMName -BootDevice CD -MemoryStartupBytes $VMMemory -SwitchName $VMNetwork -Path $VMLocation -NoVHD -Verbose
New-VHD -Path "$VMLocation\$VMName\Virtual Hard Disks\$VMName-Disk1.vhdx" -SizeBytes $VMDiskSize -Verbose
Add-VMHardDiskDrive -VMName $VMName -Path "$VMLocation\$VMName\Virtual Hard Disks\$VMName-Disk1.vhdx" -Verbose
Set-VMDvdDrive -VMName $VMName -Path $VMISO -Verbose

# Create CM01
$VMName = "BOOK-CM2012SP1MTF-CM01"
$VMMemory = 16384MB
$VMDisk1Size = 72GB
$VMDisk2Size = 650GB
New-VM -Name $VMName -BootDevice CD -MemoryStartupBytes $VMMemory -SwitchName $VMNetwork -Path $VMLocation -NoVHD -Verbose
New-VHD -Path "$VMLocation\$VMName\Virtual Hard Disks\$VMName-Disk1.vhdx" -SizeBytes $VMDisk1Size -Verbose
Add-VMHardDiskDrive -VMName $VMName -Path "$VMLocation\$VMName\Virtual Hard Disks\$VMName-Disk1.vhdx" -Verbose
New-VHD -Path "$VMLocation\$VMName\Virtual Hard Disks\$VMName-Disk2.vhdx" -SizeBytes $VMDisk2Size -Verbose
Add-VMHardDiskDrive -VMName $VMName -Path "$VMLocation\$VMName\Virtual Hard Disks\$VMName-Disk2.vhdx" -Verbose
Set-VMDvdDrive -VMName $VMName -Path $VMISO -Verbose

# Create CM02
$VMName = "BOOK-CM2012SP1MTF-CM02"
$VMMemory = 3072MB
$VMDiskSize = 300GB
New-VM -Name $VMName -BootDevice CD -MemoryStartupBytes $VMMemory -SwitchName $VMNetwork -Path $VMLocation -NoVHD -Verbose
New-VHD -Path "$VMLocation\$VMName\Virtual Hard Disks\$VMName-Disk1.vhdx" -SizeBytes $VMDiskSize -Verbose
Add-VMHardDiskDrive -VMName $VMName -Path "$VMLocation\$VMName\Virtual Hard Disks\$VMName-Disk1.vhdx" -Verbose
Set-VMDvdDrive -VMName $VMName -Path $VMISO -Verbose

# Create CM03
$VMName = "BOOK-CM2012SP1MTF-CM03"
$VMMemory = 3072MB
$VMDisk0Size = 300GB
New-VM -Name $VMName -BootDevice CD -MemoryStartupBytes $VMMemory -SwitchName $VMNetwork -Path $VMLocation -NoVHD -Verbose
New-VHD -Path "$VMLocation\$VMName\Virtual Hard Disks\$VMName-Disk1.vhdx" -SizeBytes $VMDiskSize -Verbose
Add-VMHardDiskDrive -VMName $VMName -Path "$VMLocation\$VMName\Virtual Hard Disks\$VMName-Disk1.vhdx" -Verbose
Set-VMDvdDrive -VMName $VMName -Path $VMISO -Verbose

# Create PC0001
$VMName = "BOOK-CM2012SP1MTF-PC0001"
$VMMemory = 2048MB
$VMDiskSize = 60GB
New-VM -Name $VMName -BootDevice CD -MemoryStartupBytes $VMMemory -SwitchName $VMNetwork -Path $VMLocation -NoVHD -Verbose
New-VHD -Path "$VMLocation\$VMName\Virtual Hard Disks\$VMName-Disk1.vhdx" -SizeBytes $VMDiskSize -Verbose
Add-VMHardDiskDrive -VMName $VMName -Path "$VMLocation\$VMName\Virtual Hard Disks\$VMName-Disk1.vhdx" -Verbose
Set-VMDvdDrive -VMName $VMName -Path $VMISO -Verbose

# Create PC0002
$VMName = "BOOK-CM2012SP1MTF-PC0002"
$VMMemory = 2048MB
$VMDiskSize = 60GB
New-VM -Name $VMName -BootDevice CD -MemoryStartupBytes $VMMemory -SwitchName $VMNetwork -Path $VMLocation -NoVHD -Verbose
New-VHD -Path "$VMLocation\$VMName\Virtual Hard Disks\$VMName-Disk1.vhdx" -SizeBytes $VMDiskSize -Verbose
Add-VMHardDiskDrive -VMName $VMName -Path "$VMLocation\$VMName\Virtual Hard Disks\$VMName-Disk1.vhdx" -Verbose
Set-VMDvdDrive -VMName $VMName -Path $VMISO -Verbose
