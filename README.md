# vagrant-ansible-exemple

## Description
Contient un exemple de montage de VM avec Vagrant et Ansible pour le provisioning.

## Usage

```
export CLIENT=clientB
vagrant up
vagrant ssh leader
vagrant package leader
tar xvf package.box
```

## Roadmap

- [ ] Démonstration de Vagrant et Ansible pour la mise en place d'un serveur
- [ ] Démonstration des rolling updates gérés par Docker Swarm
- [ ] Démonstration d'un outil de migration automatisée
