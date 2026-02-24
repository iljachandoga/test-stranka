# Použijeme malý webový server
FROM nginx:alpine

# Skopíruj celý obsah projektu do NGINX web root
COPY . /usr/share/nginx/html

# Nastav pracovný adresár
WORKDIR /usr/share/nginx/html

# Štandardný port pre NGINX
EXPOSE 80

# Spustenie webservera
CMD ["nginx", "-g", "daemon off;"]
