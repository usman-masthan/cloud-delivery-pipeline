# Use a bulletproof, ultra-lightweight public Linux image
FROM alpine:3.20

# Build the internal file directory layout matching WSO2 paths
RUN mkdir -p /home/wso2carbon/wso2am-4.2.0/repository/conf/

# Inject your custom configurations into the target directory
COPY config/deployment.toml /home/wso2carbon/wso2am-4.2.0/repository/conf/deployment.toml

# Expose the standard routing console port
EXPOSE 9443

# A background monitoring command to keep the test environment active
CMD ["sh", "-c", "echo 'Booting Automated Integration Environment...'; sleep infinity"]
