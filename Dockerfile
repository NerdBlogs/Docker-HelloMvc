# Use the Microsoft ASP.NET vNext base
FROM microsoft/aspnet

# Copy the actual MVC web application
COPY . /app
WORKDIR /app
# Restore packages
RUN ["kpm", "restore"]

# Expose a private port and start the server
EXPOSE 5004
ENTRYPOINT ["k", "kestrel"]