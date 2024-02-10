# Deploy openwisp2 in host with user hahatay. Remove -k argument because need the sshpass

# ansible-playbook -i hosts playbook.yml -u <user> -k --become -K
ansible-playbook -i hosts playbook.yml -u hahatay --become -K
