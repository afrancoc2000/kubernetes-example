FROM microsoft/dotnet:aspnetcore-runtime
WORKDIR /app
COPY ./bin/release/netcoreapp2.1 /app
EXPOSE 80
ENTRYPOINT ["dotnet", "hi-ip.dll"]