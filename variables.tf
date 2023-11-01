variable "vpc_id" {
  type = string
}

variable "subnet_id" {
  type = string
  description = "인스턴스가 배치될 서브넷 ID 를 입력하세요."
}

variable "az" {
  type = string
  description = "인스턴스가 배치될 가용영역을 입력하세요."
}

variable "key_pair" {
  type = string
  description = "인스턴스에 등록할 키 페어 ID를 입력하세요."
}

variable "src_sg" {
  type = string
  default = ""
}