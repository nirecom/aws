ssh-add ~/.ssh/id_ed25519_ansible
ansible-playbook -i hosts main.yml -u ansible --private-key=~/.ssh/id_ed25519_ansible --extra-vars="@private.yml"
# when private.yml is encrypted as vault
#ansible-playbook -i hosts main.yml -u ansible --private-key=~/.ssh/id_ed25519_ansible --extra-vars="@private.yml" --ask-vault-pass
