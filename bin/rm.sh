sudo docker ps -a | tail -2 | awk '{print }' | sudo xargs docker rm 
