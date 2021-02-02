# Base Image
FROM public.ecr.aws/f6n4q0p5/node12.13-alpine

# Create App Directory
RUN mkdir /app
WORKDIR /app

# Install Dependencies
COPY package*.json /app/
COPY . /app

RUN npm install
RUN npm run build

EXPOSE 3000

CMD ["node", "dist/main"]

