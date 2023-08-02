output "vm_name" {
  description = "The name of the created Virtual Machine"
  value       = azurerm_virtual_machine.my_vm.name
}
