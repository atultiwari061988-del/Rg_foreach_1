resource "azurerm_storage_account" "example" {
    for_each = { 
        anya345-storage ={
            "rg_name" = "apple_rg"
            "location" = "westus"
            "tier" = "standard"
            "replication" = "GRS"
        }
        pinku234_storage = {
            "rg_name" = "banana"
            "location" = "central india"
            "tier" = "standard"
            "repliction" ="GRS"
        }


    }
  name                     = each.key
  resource_group_name      = each.value.rg_name
  location                 = each.value.location
  account_tier             = each.value.tier
  account_replication_type =each.value.replication

 
}