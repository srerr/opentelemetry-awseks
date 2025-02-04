/*
resource "aws_eks_node_group" "telemetry-eks-ng" {
    cluster_name    = aws_eks_cluster.test_cluster.name
    node_group_name = "telemetry-eks-ng"
    node_role_arn   = aws_iam_role.eks_nodegroup_role.arn
    subnet_ids      = [aws_subnet.public-subnet1.id, aws_subnet.public-subnet2.id]
    instance_types  = ["t2.medium"]
    version = var.cluster_version
    ami_type = "AL2_x86_64"
    capacity_type = "ON_DEMAND"
    disk_size = 20
    remote_access {
        ec2_ssh_key = "nodegroup_login"
        #source_security_group_ids = [aws_security_group.eks_cluster_sg.id]
    }
    scaling_config {
        desired_size = 2
        max_size     = 3
        min_size     = 1
    }
    update_config {
        max_unavailable = 1 
    }
    depends_on = [aws_eks_cluster.test_cluster, aws_iam_role_policy_attachment.eks-AmazonEKSWorkerNodePolicy, aws_iam_role_policy_attachment.eks-AmazonEKS_CNI_Policy, aws_iam_role_policy_attachment.eks-AmazonEC2ContainerRegistryReadOnly]
    tags = {
        Environment = "telemetry"
        Name = "telemetry-eks-ng"
    }
}
*/

resource "aws_eks_node_group" "telemetry-eks-ng" {
    cluster_name    = aws_eks_cluster.test_cluster.name
    node_group_name = "telemetry-eks-ng"
    node_role_arn   = aws_iam_role.eks_nodegroup_role.arn
    subnet_ids      = [aws_subnet.private-subnet1.id, aws_subnet.private-subnet2.id]
    instance_types  = ["t2.medium"]
    version = var.cluster_version
    ami_type = "AL2_x86_64"
    capacity_type = "ON_DEMAND"
    disk_size = 20
    remote_access {
        ec2_ssh_key = "nodegroup_login"
        #source_security_group_ids = [aws_security_group.eks_cluster_sg.id]
    }
    scaling_config {
        desired_size = 2
        max_size     = 3
        min_size     = 1
    }
    update_config {
        max_unavailable = 1 
    }
    depends_on = [aws_eks_cluster.test_cluster, aws_iam_role_policy_attachment.eks-AmazonEKSWorkerNodePolicy, aws_iam_role_policy_attachment.eks-AmazonEKS_CNI_Policy, aws_iam_role_policy_attachment.eks-AmazonEC2ContainerRegistryReadOnly]
    tags = {
        Environment = "telemetry"
        Name = "telemetry-eks-ng"
    }
}