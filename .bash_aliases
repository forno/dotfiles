# AWS
alias aws='docker run --rm -it -v aws:/root/.aws amazon/aws-cli'
alias mssh='docker run --rm -it -v aws:/root/.aws forno/ec2instanceconnectcli'

# yaml
alias yq='docker run --rm -i -v ${PWD}:/workdir mikefarah/yq yq'
