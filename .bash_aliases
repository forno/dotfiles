# AWS
alias aws='docker run --rm -it -v aws:/root/.aws amazon/aws-cli'
alias mssh='docker run --rm -it -v aws:/root/.aws forno/ec2instanceconnectcli'

# node
alias node='docker run --rm -v ${PWD}:/data -w /data node node'
alias npm='docker run --rm -v ${PWD}:/data -w /data -u $(id -u):$(id -g) node npm'

# openapi3
alias openapi-generator-cli='docker run --rm -v ${PWD}:/data -w /data -u $(id -u):$(id -g) openapitools/openapi-generator-cli'

# yaml
alias yq='docker run --rm -i -v ${PWD}:/workdir mikefarah/yq yq'
