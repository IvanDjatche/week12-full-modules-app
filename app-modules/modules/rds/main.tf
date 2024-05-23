resource "aws_db_subnet_group" "main" {
  name       = "main"
  subnet_ids = var.subnet_ids

  tags = {
    Name = "main"
  }
}

resource "aws_db_instance" "main" {
  identifier              = var.db_instance_name
  allocated_storage       = var.db_allocated_storage
  engine                  = var.db_engine
  engine_version          = var.db_engine_version
  instance_class          = var.db_instance_class
  db_name                 = var.db_name
  username                = var.db_username
  password                = var.db_password
  db_subnet_group_name    = aws_db_subnet_group.main.name
  vpc_security_group_ids  = var.security_group_ids
  skip_final_snapshot     = true

  tags = {
    Name = var.db_instance_name
  }
}


