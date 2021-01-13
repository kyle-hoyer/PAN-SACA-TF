fw_license   = "byol"                                                       # Uncomment 1 fw_license to select VM-Series licensing mode
#fw_license   = "bundle1"
#fw_license    = "bundle2"
global_prefix = "saca"

#location        = "eastus"     #Uncomment to deploy into Azure Commercial  
location      = "usgovarizona"  #uncomment to deploy into Azure Government    
environment   = "usgovernment"  #uncomment to deploy into Azure Government

# -----------------------------------------------------------------------
# VM-Series resource group variables
fw_prefix               = "panos"                                         # Adds prefix name to all resources created in the firewall resource group
fw_vm_count             = 2
fw_panos                = "10.0.1"
fw_nsg_prefix           = "0.0.0.0/0"
fw_internal_lb_ip       = "10.140.53.38"                              #Utilize the next IP after the number of PANOS VMs you're deploying in the trusted subnet

# -----------------------------------------------------------------------
# Transit resource group variables
vnet_prefix          = "saca"                                         # Adds prefix name to all resources created in the transit vnet's resource group
vnet_cidr            = "10.140.52.0/22"
vnet_subnet_names    = ["mgmt", "untrust", "trust", "vdms"]
vnet_subnet_cidrs    = ["10.140.53.0/28", "10.140.53.16/28", "10.140.53.32/28", "10.140.52.0/24"]

# -----------------------------------------------------------------------
# VDMS resource group variables                                      # Adds prefix name to all resources created in spoke1's resource group
linux_vm_size           = "Standard_B1s"
linux_publisher         = "Canonical"
linux_offer             = "UbuntuServer"
linux_sku               = "16.04-LTS"
linux_ip                = "10.140.52.4"

windows_vm_size         = "Standard_DS1_v2"
windows_publisher       = "MicrosoftWindowsServer"
windows_offer           = "WindowsServer"
windows_sku             = "2016-Datacenter"
windows_ip              = "10.140.52.5"

vm_username             = "khoyer"
vm_password             = "Pal0Alt0@123"



