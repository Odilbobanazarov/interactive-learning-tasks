
resource "aws_route_table" "PublicRT" {          
    vpc_id =  aws_vpc.main.id
         route {
    cidr_block = "0.0.0.0/0"                     
    gateway_id = aws_internet_gateway.gw.id
     }
 }

 resource "aws_route_table_association" "public1" {
    subnet_id = aws_subnet.public1.id               
    route_table_id = aws_route_table.PublicRT.id
 }

 resource "aws_route_table_association" "public2" {
    subnet_id = aws_subnet.public2.id               
    route_table_id = aws_route_table.PublicRT.id
 }

 resource "aws_route_table_association" "public3" {
    subnet_id = aws_subnet.public3.id               
    route_table_id = aws_route_table.PublicRT.id
 }
    
 
 resource "aws_route_table" "PrivateRT" {        
   vpc_id = aws_vpc.main.id
   route {
   cidr_block = "0.0.0.0/0"                      
   nat_gateway_id = aws_nat_gateway.example.id
   }
 }
  
resource "aws_route_table_association" "private1" {
    subnet_id = aws_subnet.private1.id                 
    route_table_id = aws_route_table.PrivateRT.id
 }
  
resource "aws_route_table_association" "private2" {
    subnet_id = aws_subnet.private2.id                 
    route_table_id = aws_route_table.PrivateRT.id
 }
  
resource "aws_route_table_association" "private3" {
    subnet_id = aws_subnet.private3.id                 
    route_table_id = aws_route_table.PrivateRT.id
 }
