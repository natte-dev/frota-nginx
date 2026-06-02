# Nginx Gateway — somente proxy reverso para api.frotalink.com.br
# O React (app.frotalink.com.br) é servido por serviço separado.
FROM nginx:alpine

# Remover config padrão
RUN rm /etc/nginx/conf.d/default.conf

# Copiar config personalizada
COPY nginx.conf /etc/nginx/nginx.conf

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
