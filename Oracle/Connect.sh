ssh ubuntu@129.158.60.17 -i /Users/quinnfavo/Desktop/ssh-key-2024-12-09.key -p 22
#Download file for VPN
scp -i /Users/quinnfavo/Desktop/ssh-key-2024-12-09.key ubuntu@129.158.60.17:/home/ubuntu/qfavo.conf  /Users/quinnfavo/Desktop
