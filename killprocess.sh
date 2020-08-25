#!/usr/bin/sh

##Este scrip mata varios procesos que esten corriendo, en este ejemplo de node, 
#puede usarse para jboss, wildfly etc, cambiando node por el respectivo

echo 'deteniendo server'

for i in `ps -fea |grep node |grep -v grep |awk '{print $2}'`; do sudo kill -9 $i; done