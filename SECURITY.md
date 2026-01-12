# Security Policy
- **Container Security**: All images are based on `alpine` for minimal attack surface.
- **Network Security**: NetworkPolicies are implemented to isolate the database.
- **Secrets Management**: Sensitive data is stored in OpenShift Secrets, not in YAML.
