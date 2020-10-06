# AWS
alias aws='docker run --rm -it -v aws:/root/.aws amazon/aws-cli'
alias mssh='docker run --rm -it -v aws:/root/.aws forno/ec2instanceconnectcli'

# node
alias lb4='docker run -it --rm -v ${PWD}:/data -w /data -u $(id -u):$(id -g) forno/loopback-cli'
alias node='docker run -it --rm -v ${PWD}:/data:ro -w /data node'
alias npm='docker run -it --rm -v ${PWD}:/data -w /data -u $(id -u):$(id -g) node npm'
alias npx='docker run -it --rm -v ${PWD}:/data -w /data -u $(id -u):$(id -g) node npx'
alias yarn='docker run -it --rm -v ${PWD}:/data -w /data -u $(id -u):$(id -g) node yarn'

# openapi3
alias openapi-generator-cli='docker run --rm -v ${PWD}:/data -w /data -u $(id -u):$(id -g) openapitools/openapi-generator-cli'

# yaml
alias yq='docker run --rm -i -v ${PWD}:/workdir:ro mikefarah/yq yq'
