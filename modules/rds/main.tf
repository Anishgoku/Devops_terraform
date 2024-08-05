resource "aws_db_subnet_group" "main" {
  name       = "main"
  subnet_ids = var.private_subnets
}

resource "aws_db_instance" "main" {
  allocated_storage    = 20
  engine               = "mysql"
  engine_version       = "5.7.44"
  instance_class       = "db.t3.micro"
  username             = var.username
  password             = var.password
  db_subnet_group_name = aws_db_subnet_group.main.id
  vpc_security_group_ids = [var.db_security_group]
  skip_final_snapshot   = true
  multi_az             = true
  backup_retention_period = 7
}
