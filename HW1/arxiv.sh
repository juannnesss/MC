#!/bin/bash
echo ===========================================================================
echo "Estas son los titulos para la palabra $1"
echo "==========================================================================="
#bajamos la pagina|buscamos las lineas que tienen Title:|quitams todo lo que esta antes de Title|para dejar solo el titulo |Buscamos la palabra
curl http://arxiv.org/list/quant-ph/new | grep -iw Title:|sed 's/.*Title//g'|sed 's/.*span\>//g'|grep -iw $1
#bajamos la pagina|buscamos las lineas que tienen Title:|quitams todo lo que esta antes de Title|para dejar solo el titulo |Buscamos la palabra