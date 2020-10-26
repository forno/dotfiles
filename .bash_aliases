# AWS
alias aws='docker run --rm -it -v ~/.aws:/root/.aws -v $(pwd):/aws amazon/aws-cli'
alias mssh='docker run --rm -it -v aws:/root/.aws forno/ec2instanceconnectcli'

# node
alias gatsby='npx gatsby'
alias lb4='npx lb4'

# openapi3
alias openapi-generator-cli='docker run --rm -v ${PWD}:/data -w /data -u $(id -u):$(id -g) openapitools/openapi-generator-cli'

# yaml
alias yq='docker run --rm -i -v ${PWD}:/workdir:ro mikefarah/yq yq'
