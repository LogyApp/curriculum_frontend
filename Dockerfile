# Usar una imagen oficial de Nginx para servir contenido estático
FROM nginx:alpine

# Eliminar la configuración por defecto de Nginx
RUN rm -rf /etc/nginx/conf.d/*

# Copiar configuración personalizada de Nginx
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Copiar los archivos HTML, CSS y JS al directorio de Nginx
COPY . /usr/share/nginx/html/

# Exponer el puerto 8080
EXPOSE 8080

# Comando para iniciar Nginx
CMD ["nginx", "-g", "daemon off;"]