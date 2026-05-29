resource "aws_lb" "backend_alb" {
  name               = "${local.common_name}-backend-alb"
  internal           = true
  load_balancer_type = "application"
  security_groups    = [local.backend_alb_sg_id]
  subnets            = local.private_subnets
                   

  enable_deletion_protection = false


  tags = merge(

    local.tags, {

        Name = local.common_name
    }
    
  )
    
}


resource "aws_lb_listener" "backend_end" {
  load_balancer_arn = aws_lb.backend_alb.arn
  port              = "80"
  protocol          = "HTTP"

  default_action {
    type = "fixed-response"

    fixed_response {
      content_type = "text/plain"
      message_body = "Hi i am from backend ALB"
      status_code  = "200"
    }
  }
}