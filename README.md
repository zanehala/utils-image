# utils-image 
A small image with some frequently used utilities I can have on hand.

To fire up a temporary pod in Kubernetes for troubleshooting you can run 
```console
$ kubectl run zane-shell --rm -i --tty --image zhala/utils-image
```

Also a simple test case for messing around with Drone CI. I have Drone CI
and drone-runner-kube running in my [homelab cluster](https://github.com/zanehala/homelab), 
whenever I push a commit to this repo on my internally hosted git (Gitea) Drone CI runs the pipeline defined in
.drone.yaml which builds and pushes the image to docker hub for me.