subnet = {

sub1 = {

name = "frontend"
rg-name = "monu"
vnet = "sidhu"
address_perfixes = [ "10.0.1.0/24"]

}
sub2 = {

name = "backend"
rg-name = "monu"
vnet = "sidhu"
address_perfixes = [ "10.0.2.0/24"]

}

sub3 = {

name = "database"
rg-name = "monu"
vnet = "sidhu"
address_perfixes = [ "10.0.3.0/24"]

}
azure_bestion = {

name = "AzureBastionSubnet"
rg-name = "monu"
vnet = "sidhu"
address_perfixes = [ "10.0.4.0/26"]

}

}