variable "cidr_block" { 
  type = string
  description = "서브넷의 CIDR 네트워크 정보를 입력하세요"
  default = "10.0.0.0/24"
}

variable "vpc_id" {
  type = string
  description = "서브넷이 소속될 VPC 정보"
}