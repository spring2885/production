sudo docker ps -a | tail -2 | awk '{print $1}' | xargs sudo docker rm 
