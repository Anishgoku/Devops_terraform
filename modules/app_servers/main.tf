resource "aws_launch_configuration" "app" {
  name          = "app-launch-configuration"
  image_id      = var.ami
  instance_type = var.instance_type
  security_groups = [var.app_security_group]
  user_data = <<-EOF
                #!/bin/bash
                echo "Application Server" > /var/www/html/index.html
                nohup busybox httpd -f -p 80 &
                EOF
}

resource "aws_autoscaling_group" "app" {
  desired_capacity     = 2
  max_size             = 2
  min_size             = 2
  vpc_zone_identifier  = var.private_subnets
  launch_configuration = aws_launch_configuration.app.id

  tag {
    key                 = "Name"
    value               = "app-server"
    propagate_at_launch = true
  }
}
