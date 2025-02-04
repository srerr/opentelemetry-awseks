data "terraform_remote_state" "eks-data"{
    backend = "local"
    config = {
        path = "../1.aws-eks-terraform-manifest/terraform.tfstate"
    }  
}
