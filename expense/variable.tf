variable "instance_names" {
    type = list(string)
    default = ["mysql", "backend", "Frontend"]
}

variable "common_tags" {
    type = map
    default = {
        Project = "expense"
        Environment = "dev"
        Terraform = "true"
    }
}

variable "zone_id" {
    default = "Z09970793EMYB6EUDIATG"
}

variable "domain_name" {
    default = "daws81.online"
}