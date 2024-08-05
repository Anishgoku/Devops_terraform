#!/bin/bash
apt update
apt install nginx -y

#Fetching metadata api token
TOKEN=`curl -X PUT "http://169.254.169.254/latest/api/token" -H "X-aws-ec2-metadata-token-ttl-seconds: 21600"`

# Get the instance ID using the instance metadata
INSTANCE_ID=$(curl -s http://169.254.169.254/latest/meta-data/instance-id -H "X-aws-ec2-metadata-token: $TOKEN")

# Create a simple HTML file with the portfolio content and display the images
cat <<EOF > /var/www/html/index.html
<!DOCTYPE html>
<html>
<head>
  <title>My Portfolio</title>
  <style>
    /* Add animation and styling for the text */
    @keyframes colorChange {
      0% { color: red; }
      50% { color: green; }
      100% { color: blue; }
    }
    h1 {
      animation: colorChange 2s infinite;
    }
  </style>
</head>
<body>
  <h1>Terraform Project Server 1</h1>
  <h2>Instance ID: <span style="color:green">$INSTANCE_ID</span></h2>
  <p>Welcome to Terraform Assignment Web output</p>
  
</body>
</html>
EOF

# Restart nginx service
systemctl restart nginx
