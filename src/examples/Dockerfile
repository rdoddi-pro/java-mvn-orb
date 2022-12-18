# Simple dockerfile to test docker jobs in this orb.
# Author: Ramesh Doddi
#
FROM --platform=linux/amd64 nginx:mainline-alpine
EXPOSE 80
CMD ["nginx-debug", "-g", "daemon off;"]
