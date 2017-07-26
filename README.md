# Introduction

This template is used to leverage many VM instance for students. In this configuration, it has been used to practice APACHE. But it could be anything else.

# How it works

Feed the tp.yaml file with all you student name and email address. 

Then launch a 30 VM cluster

```
openstack stack create -t main.yaml --parameter count=30
```

After stack creation, each student will receive a password in order to acces their VM.
