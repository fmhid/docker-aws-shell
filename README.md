# docker-aws-shell
AWS Shell Dockerized

[AWS-Shell](https://github.com/awslabs/aws-shell)

## Docker run command

```shell
docker run --rm -ti fmeuigs/aws-shell
```

## Docker run variables

**ACCESSKEY** (aws_access_key_id)
**SECRETKEY** (aws_secret_access_key)
**REGION** [AWS Regions and AZ](https://docs.aws.amazon.com/es_es/AmazonRDS/latest/UserGuide/Concepts.RegionsAndAvailabilityZones.html)

|Región|Nombre|
|------|------|
|Región EE.UU. Oeste (Oregón)|us-west-2|
|EE.UU. Oeste (Norte de California)|us-west-1|
|Región EE.UU Este (Ohio)|us-east-2|
|Región EE.UU. Este (Norte de Virginia)|us-east-1|
|Región Asia Pacífico (Mumbai)|ap-south-1|
|Región Asia Pacífico (Seúl)|ap-northeast-2|
|Región Asia Pacífico (Singapur)|ap-southeast-1|
|Región Asia Pacífico (Sídney)|ap-southeast-2|
|Región Asia Pacífico (Tokio)|ap-northeast-1|
|Región Canadá (Central)|ca-central-1|
|Región China (Pekín)|cn-north-1|
|Región UE (Fráncfort)|eu-central-1|
|Región UE (Irlanda)|eu-west-1|
|Región UE (Londres)|eu-west-2|
|Región de UE (París)|eu-west-3|
|Región América del Sur (São Paulo)|sa-east-1|
|AWS GovCloud (EE.UU.)|us-gov-west-1|

**PROFILENAME** (profilename)
**ROLEARN** (role_arn)
**OUTPUT** (Output format: none, text, json)

```shell
docker run --rm -ti -e ACCESSKEY=******** -e SECRETKEY=******** -e REGION=eu-west-1 -e PROFILENAME=pepitolopeta -e ROLEARN=arn:aws:iam:123456:role/rolename -e OUTPUT=json fmeuigs/aws-shell
```
