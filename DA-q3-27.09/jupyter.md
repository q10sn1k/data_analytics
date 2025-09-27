# docker-compose.yml
```
services:
  lab:
    image: jupyter/scipy-notebook:latest
    ports:
      - "8888:8888"
    environment:
      - JUPYTER_TOKEN=lab
      - NB_UID=1000        # подставьте ваш uid: вывод команды `id -u` на хосте
      - NB_GID=1000        # подставьте ваш gid: вывод команды `id -g` на хосте
    volumes:
      - ./ipynb_files:/home/jovyan/work #  ./ipynb_files - папка на хосте, /home/jovyan/work - папка внутри контейнера
       
    restart: unless-stopped
    
```