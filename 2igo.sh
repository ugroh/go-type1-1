#!/bin/zsh
texhome=$(kpsewhich -var-value TEXMFHOME)
echo $texhome   # Should be non empty
mkdir -p $texhome/fonts/map/dvips/igo
mkdir -p $texhome/fonts/type1/igo
mkdir -p $texhome/fonts/tfm/igo
cp igo-fonts/igo.map $texhome/fonts/map/dvips/igo
cp igo-fonts/*.pfb $texhome/fonts/type1/igo
cp igo-fonts/*.tfm $texhome/fonts/tfm/igo
texhash $texhome
updmap-user --enable Map=igo.map