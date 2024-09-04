#!/bin/bash

# Script para automatizar commit e push no Git

# Verifica se uma mensagem de commit foi passada
if [ -z "$1" ]
then
  echo "Erro: Por favor, insira uma mensagem de commit."
  exit 1
fi

# Adiciona mudanças
git add .

# Faz o commit com a mensagem fornecida
git commit -m "$1"

# Faz o push para a branch atual
git push origin $(git rev-parse --abbrev-ref HEAD)

echo "Commit e push concluídos com sucesso."
