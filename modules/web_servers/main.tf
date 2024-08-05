resource "aws_lb" "main" {
  name               = "web-alb"
  internal           = false
  load_balancer_type = "application"
  subnets            = var.public_subnets
}

resource "aws_lb_target_group" "main" {
  name     = "web-tg"
  port     = 80
  protocol = "HTTP"
  vpc_id   = var.vpc_id
}

resource "aws_lb_listener" "http" {
  load_balancer_arn = aws_lb.main.arn
  port              = "80"
  protocol          = "HTTP"
  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.main.arn
  }
}

resource "aws_launch_configuration" "web" {
  name          = "web-launch-configuration"
  image_id      = var.ami
  instance_type = "t2.micro"
  security_groups = [var.web_security_group]
  key_name               = "Assignment"
  user_data              = base64encode(file("userdata1.sh"))
}

resource "aws_autoscaling_group" "web" {
  desired_capacity     = 2
  max_size             = 2
  min_size             = 2
  vpc_zone_identifier  = var.public_subnets
  launch_configuration = aws_launch_configuration.web.id
  target_group_arns    = [aws_lb_target_group.main.arn]

  tag {
    key                 = "Name"
    value               = "web-server"
    propagate_at_launch = true
  }
}
