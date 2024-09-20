#  1. command Line
#  2. terraform.tfvars
#  3. environment variables
#  4. default
#  5. Prompt
variable "ami_id" {
    type = string
    default = "ami-09c813fb71547fc4f"
    description = "This is the ami_id of devops practice"
}

variable "instance_type" {
    type = string
    default = "t3.micro"
}

variable "tags" {
    default = {
        Name = "backend"
        Project = "expense"
        Component = "backend"
        Environment = "Dev"
        Terraform = "true"
    }
}

variable "sg_name" {
    default = "allow_ssh"
}

variable "sg_description" {
    default = "Allow all ssh Port 22"
}

variable "from_port" {
    default = "22"
    type = number
}

variable "to_port" {
    default = "22"
    type = number
}

variable "protocol" {
    default = "tcp"
}
variable "cidr_blocks" {
    type = list(string)
    default = ["0.0.0.0/0"]
}