# Ingress role
Kida over complicated way to manage ingress to both publicaly available services and ensure DNS for private services is updated.

Leverages containers dictionary in host_vars and adds three additional varibles

- `ingress_required: true` - When true ingress configuration will be run across containers/services deployed to this host
- `ingress_hostname: "tf.{{ domain_name }}"` - Hostname to use for service
- `public_service: true` -  Ingress TCP forwarding rules will be setup for any containers that are marked as public to route traffic from cloud VPS to private network and DNS entries will be created for any containers that are private with traffic being confined to the nebula CIDR