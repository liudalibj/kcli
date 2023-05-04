{% if config_type == 'gcp' %}
systemctl enable --now gcp-hack
{% endif %}
{% if 'ubuntu' in image %}
apt-get -y install curl
{% endif %}
{% if sdn != None and sdn == 'cilium' %}
mount bpffs -t bpf /sys/fs/bpf
{% endif %}
bash /root/join.sh
