# Imagen base
FROM node:18

# Carpeta de trabajo
WORKDIR /app

# Copiar archivos
COPY package*.json ./

# Instalar dependencias
RUN npm install

# Copiar el resto
COPY . .

# 🔥 IMPORTANTE: usar el puerto de Railway
ENV PORT=4000

# 🔥 MUY IMPORTANTE
EXPOSE 4000

# Comando de inicio
CMD ["npm", "start"]