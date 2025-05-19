docker build -t mijn-web .
docker run -dt -p81:80 --name mijn-website-container mijn-web
