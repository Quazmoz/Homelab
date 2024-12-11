#fstab

UUID=B2B0-1E37  /mnt/Cruzer4GB  vfat  defaults,nofail  0  0 


#
#Add perms
sudo chown root:sftpusers /mnt/Cruzer4GB/YouTube
sudo chmod 775 /mnt/Cruzer4GB/YouTube

#remove special chars before moving
sudo cp * /mnt/Cruzer4GB/YouTube --no-preserve=ownership

cp "Cantico_nuevo_PRAISE_Trato_de_recordar_su_amor_sin_igual_Dios_Madre.m4a" /mnt/cruzer4gb/youtube
