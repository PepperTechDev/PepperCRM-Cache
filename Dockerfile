# Uso de imagen oficial de Redis Stack
FROM redis/redis-stack-server:latest

LABEL maintainer="PepperTech Devs" \
      version="1.0.0" \
      description="Imagen personalizada de Redis Stack para PepperCRM" \
      license="MIT" \
      created="2025-01-11" \
      repository="https://github.com/PepperTechDev/PepperCRM-Cache" \
      environment="local"

# Establecimiento de configuración redis
COPY redis.conf /usr/local/etc/redis/redis.conf

# Expone el puerto 6379
EXPOSE 6379

# Ejecuta Redis usando el archivo de configuración personalizado
CMD ["redis-server", "/usr/local/etc/redis/redis.conf"]
