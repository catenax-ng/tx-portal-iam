# Catena-X IAM: Keycloak instances

![Tag](https://img.shields.io/static/v1?label=&message=LeadingRepository&color=green&style=flat)

This repository contains the reference configuration to deploy the Catena-X (CX) specific Keycloak instances.

The instances depend on the [helm chart from Bitnami](https://artifacthub.io/packages/helm/bitnami/keycloak) (chart version 7.1.18, app version 16.1.1).

The repository is split up in:

* The helm charts to deploy the CX Keycloak instances
* The CX specific configuration (e.g. keycloak-themes and initial realm-config)
* The dockerfile (Dockerfile.import) to build an image containing the CX specific configuration which is used as init container at Keycloak startup

For further information please refer to the chart specific README files, available under the following directories:

* charts/centralidp
  * [Installation](./charts/centralidp/README.md#installation)
  * [Post-Install Configuration](./charts/centralidp/README.md#post-install-configuration)
  * [Post-Upgrade Configuration](./charts/centralidp/README.md#post-upgrade-configuration)
* charts/sharedidp
  * [Installation](./charts/sharedidp/README.md#installation)
  * [Post-Install Configuration](./charts/sharedidp/README.md#post-install-configuration)

The referenced container images are for demonstration purposes only.
