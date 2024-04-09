module "pip" {
    source = "E:\\Training_Batches\\AppleSoftSol\\AzureDevOps\\ATS_Mar_2024\\Terraform\\Module"
    rgname = "sami1rg"
    pipname = "sam-pip"
    allocation = "Dynamic"
}
 module "vnet" {
    source = "E:\\Training_Batches\\AppleSoftSol\\AzureDevOps\\ATS_Mar_2024\\Terraform\\subnet"
    rgname = module.pip.rg_out
    loc = module.pip.loc_out
    vnetname = "sami-vnet1"
    address = ["192.168.0.0/16"]
    subnetname = "sami-subnet1"
    subnetaddress = ["192.168.0.0/24"]
    nic = "samnicp"
    ipconfig = "testsam"
    allocation = "Dynamic"
        }