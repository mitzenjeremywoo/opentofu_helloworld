## create a stack from existing repo 
terramate create --all-terraform

## creates a new stack 
terramate create --name "hello" --description "hello" .

## run plan and see what are the changes
terramate run  --changed -- tofu plan -lock-timeout=5m -out deploy.tfplan

# sync to terramate cloud
terramate run --sync-drift-status --tofu-plan-file=drift.tfplan --continue-on-error -- tofu plan -detailed-exitcode -out drift.tfplan

terramate run --changed --sync-deployment --terraform-plan-file=deploy.tfplan -- tofu apply -input=false -auto-approve -lock-timeout=5m deploy.tfplan