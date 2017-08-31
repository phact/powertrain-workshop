HOST_IP="$(grep 'node0_ext' /etc/hosts | cut -d$'\t' -f 1)"
cd /tmp/Powertrain2/conf

cp /tmp/Powertrain2/conf/application._template.conf /tmp/Powertrain2/conf/application.conf
sed -i '/dse_graph_host/c\dse_graph_host="'${HOST_IP}'"' application.conf
sed -i '/graph_name/c\graph_name="powertrain_graph"' application.conf