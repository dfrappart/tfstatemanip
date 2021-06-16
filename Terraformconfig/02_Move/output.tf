

output "secretfull" {
    value = module.MySQLPWD_to_KV.SecretFullOutput
    sensitive = true
}