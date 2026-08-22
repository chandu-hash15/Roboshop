resource "aws_lb" "frontend_alb" {
  name               = "${local.common_name}-frontend-alb"
  internal           = false
  load_balancer_type = "application"
  security_groups    = local.frontend_alb_sg_id
  subnets            = local.public_subnets

  enable_deletion_protection = true

    tags = merge(

    local.tags, {

        Name = local.common_name
    }
    
  )
}


resource "aws_lb_listener" "front_end" {
  load_balancer_arn = aws_lb.frontend_alb.arn
  port              = "443"
  protocol          = "HTTPS"
  ssl_policy        = "ELBSecurityPolicy-TLS13-1-3-2021-06"
  certificate_arn   = local.frontend_roboshop_cert
  default_action {
    type = "fixed-response"

    fixed_response {
      content_type = "text/plain"
      message_body = "<h1> hey hi this message is from PCR "
      status_code  = "200"
    }
  }
}

resource "aws_route53_record" "www" {
  zone_id = var.hosted_zone
  name    = "${var.Project}-${var.Environment}.${var.domain_name}"
  type    = "A"

  alias {
    name                   = aws_lb.frontend_alb.dns_name
    zone_id                = aws_lb.frontend_alb.zone_id
    evaluate_target_health = true
  }
}