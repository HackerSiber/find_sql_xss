#!/bin/bash

# Minta pengguna untuk memasukkan URL situs web yang ingin dipindai
echo "Masukkan URL situs web yang ingin dipindai:"
read target

# Periksa apakah situs web rentan terhadap serangan SQL injection
sqlmap -u "$target" --dbs

# Periksa apakah situs web rentan terhadap serangan NoSQL injection
nosqli -u "$target"

# Periksa apakah situs web rentan terhadap serangan XSS
xss-scan -u "$target"
