# Load Balancer

This project configures web servers with custom HTTP headers and sets up HAProxy as a load balancer to distribute traffic across multiple web servers.

## Tasks

### 0. Double the number of webservers
Configures Nginx to include a custom HTTP response header X-Served-By containing the server's hostname.

**File:** 0-custom_http_response_header

### 1. Install your load balancer
Installs and configures HAProxy to distribute traffic using round-robin algorithm.

**File:** 1-install_load_balancer

## Author
ALU System Engineering & DevOps Project
